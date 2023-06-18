import XCTest
@testable import MVVMApiIntegration

class HomeViewModelTests: XCTestCase {
    
    var homeViewModel: HomeViewModel!
    
    override func setUp() {
        super.setUp()
        homeViewModel = HomeViewModel.vm
    }
    
    override func tearDown() {
        homeViewModel = nil
        super.tearDown()
    }
    
    func testGetUsers() {
        let expectation = XCTestExpectation(description: "Get users")
        
        homeViewModel.getUsers {
            expectation.fulfill()
            XCTAssertNotNil(self.homeViewModel.getUserList())
            XCTAssertEqual(self.homeViewModel.getRowCount(),self.homeViewModel.getUserList().count)
            XCTAssertNil(self.homeViewModel.error)
        }
        
        wait(for: [expectation], timeout: 5)
    }
}







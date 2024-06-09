// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Module1 {
    function divide(uint256 _dividend, uint256 _divisor) external pure returns (uint256) {
        // require statement
        require(_divisor != 0, "Divisor cannot be zero.");

        // assert statement
        assert(_dividend >= _divisor);

        // Perform the division
        uint256 quotient = _dividend / _divisor;

        // revert statement
        if (quotient > 10) {
            revert("Quotient cannot exceed 10.");
        }

        return quotient;
    }
}

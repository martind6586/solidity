contract C
{
	function f() public pure {
		uint x;
		for (uint i = 0; i < 2; ++i) {
			if (i == 1) {
				x = 1;
				continue;
			}
			if (i == 0) {
				x = 2;
				continue;
			}
		}
		assert(x == 1);
	}
}
// ====
// SMTEngine: bmc
// SMTSolvers: z3
// BMCLoopIterations: 4
// ----
// Info 6002: BMC: 2 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.

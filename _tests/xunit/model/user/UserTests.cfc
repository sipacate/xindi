component extends="tests.xunit.BaseTest" {

	// Testcase Lifecycle Methods

	function setup() {
		super.setup("model.user.User");
	}

	// Tests

	function test_isPersisted_returns_true_when_user_is_persisted() {
		variables.CUT.$property(propertyName = "userId", propertyScope = "variables", mock = 111);
		local.actual = variables.CUT.isPersisted();
		$assert.isTrue(local.actual);
	}

	function test_setPassword_sets_hashed_password() {
		variables.CUT.setPassword(password = "the password");
		local.expected = "691D00586F9905971D02E6BFE8CC82BC57043EDE73DE0C93EBE1C4DD26357DE3";
		local.actual = variables.CUT.$getProperty(name = "password", scope = "variables");
		$assert.isEqual(local.expected, local.actual);
	}

}

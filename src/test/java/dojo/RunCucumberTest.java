package dojo;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources", monochrome = true, strict = true, plugin = { "pretty",
		"html:target/site/cucumber" })
public class RunCucumberTest {
}

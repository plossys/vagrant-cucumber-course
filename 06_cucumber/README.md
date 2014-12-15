# Sixth demo
First steps with vagrant-cucumber

* [vagrant-cucumber](https://github.com/scalefactory/vagrant-cucumber)

## prepare the box

```cmd
vagrant up --provider=virtualbox
```

## write your first cucumber scenario

```cmd
mkdir features
vi features/install.feature
```

```cucumber
Feature: Installing APW

  Scenario: Check we can install APW 2.1.2.105

    Given there is a running VM called "win7"

    When I install "SealAPW-Setup-2.1.2.105-x64.msi", it should succeed
    Then the version of the file "sealapw.exe" should be "2.1.2.105"
```

## add some support code

* `features/support/env.rb`
* `features/support/stdout.rb`

## start vagrant cucumber

Start `vagrant cucumber` for the first time.

There are missing step definitions and cucumber tells us so:

```
You can implement step definitions for undefined steps with these snippets:

When(/^I install "(.*?)", it should succeed$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^the version of the file "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
```

## edit first step definition

```cmd
mkdir features/step_definitions
vi features/step_definitions/install.rb
vi features/step_definitions/check_version.rb
```

Just copy the snippets into the empty files.

## run vagrant cucumber again

Now run `vagrant cucumber` again.

Now you see `TODO (Cucumber::Pending)` message with the source line of the missing implementation.

## @norollback

With the `@norollback` tag before a scenario you can leave the VM without rolling it back to the snapshot.

So we can have a look at the VM after the scenario.

Use `vagrant snap rollback` manually to start with a clean state of the VM.

## vagrant-cucumber glue code

```cucumber
Then running the shell command `hostname` should succeed
And the stdout of that shell command should be "win7"
```

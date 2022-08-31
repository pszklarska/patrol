/// We want to be able to let the developer pass common flags, such as `verbose`
/// and `debug`, at any position in the command invocation.
///
/// This class exists to avoid having to define these common flags for every
/// command. Instead, we just pass its reference to the subcommands.
///
/// For example, these invocations should be equivalent:
///
/// `$ maestro --verbose --debug drive`
///
/// `$ maestro drive --verbose --debug`
///
/// `$ maestro --verbose drive --debug`
class TopLevelFlags {
  bool verbose = false;
  bool debug = false;
}
defmodule SocializerWeb.Schema do
  use Absinthe.Schema
  import_types(Absinthe.Type.Custom)
  import_types(SocializerWeb.Schema.CommentTypes)
  import_types(SocializerWeb.Schema.ConversationTypes)
  import_types(SocializerWeb.Schema.MessageTypes)
  import_types(SocializerWeb.Schema.PostTypes)
  import_types(SocializerWeb.Schema.UserTypes)

  query do
    import_fields(:comment_queries)
    import_fields(:conversation_queries)
    import_fields(:message_queries)
    import_fields(:post_queries)
    import_fields(:user_queries)
  end

  mutation do
    import_fields(:comment_mutations)
    import_fields(:conversation_mutations)
    import_fields(:message_mutations)
    import_fields(:post_mutations)
    import_fields(:user_mutations)
  end
end
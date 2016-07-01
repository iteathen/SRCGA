.class Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;
.super Ljavafx/fxml/FXMLLoader$ValueElement;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstanceDeclarationElement"
.end annotation


# instance fields
.field public constant:Ljava/lang/String;

.field public factory:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/fxml/FXMLLoader;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;
    move-object v1, p1

    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/fxml/FXMLLoader$ValueElement;-><init>(Ljavafx/fxml/FXMLLoader;Ljavafx/fxml/FXMLLoader$1;)V

    .line 952
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->constant:Ljava/lang/String;

    .line 953
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->factory:Ljava/lang/String;

    .line 956
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->type:Ljava/lang/Class;

    .line 957
    return-void
.end method


# virtual methods
.method public constructValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->value:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 982
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->value:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->type:Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 1018
    :cond_0
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;
    return-object v0

    .line 983
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->constant:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 984
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->type:Ljava/lang/Class;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->constant:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .local v1, "value":Ljava/lang/Object;
    goto :goto_0

    .line 985
    .end local v1    # "value":Ljava/lang/Object;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->factory:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 988
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->type:Ljava/lang/Class;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->factory:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 991
    .line 994
    .local v2, "factoryMethod":Ljava/lang/reflect/Method;
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    move-object v1, v4

    .line 999
    .line 1000
    .restart local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 989
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "factoryMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 990
    .local v3, "exception":Ljava/lang/NoSuchMethodException;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 995
    .end local v3    # "exception":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "factoryMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 996
    .local v3, "exception":Ljava/lang/IllegalAccessException;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 997
    .end local v3    # "exception":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 998
    .local v3, "exception":Ljava/lang/reflect/InvocationTargetException;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1001
    .end local v2    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v3    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$2000(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/BuilderFactory;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    :goto_1
    move-object v1, v4

    .line 1003
    .local v1, "value":Ljavafx/util/Builder;
    move-object v4, v1

    if-nez v4, :cond_4

    .line 1004
    # getter for: Ljavafx/fxml/FXMLLoader;->DEFAULT_BUILDER_FACTORY:Ljavafx/util/BuilderFactory;
    invoke-static {}, Ljavafx/fxml/FXMLLoader;->access$2100()Ljavafx/util/BuilderFactory;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->type:Ljava/lang/Class;

    invoke-interface {v4, v5}, Ljavafx/util/BuilderFactory;->getBuilder(Ljava/lang/Class;)Ljavafx/util/Builder;

    move-result-object v4

    move-object v1, v4

    .line 1007
    :cond_4
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1009
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->type:Ljava/lang/Class;

    invoke-static {v4}, Lsun/reflect/misc/ReflectUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v4

    move-object v1, v4

    .line 1014
    .local v1, "value":Ljava/lang/Object;
    goto :goto_0

    .line 1001
    .end local v1    # "value":Ljava/lang/Object;
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v4}, Ljavafx/fxml/FXMLLoader;->access$2000(Ljavafx/fxml/FXMLLoader;)Ljavafx/util/BuilderFactory;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->type:Ljava/lang/Class;

    invoke-interface {v4, v5}, Ljavafx/util/BuilderFactory;->getBuilder(Ljava/lang/Class;)Ljavafx/util/Builder;

    move-result-object v4

    goto :goto_1

    .line 1010
    .local v1, "value":Ljavafx/util/Builder;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 1011
    .local v2, "exception":Ljava/lang/InstantiationException;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 1012
    .end local v2    # "exception":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v4

    move-object v2, v4

    .line 1013
    .local v2, "exception":Ljava/lang/IllegalAccessException;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 962
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v4, v1

    if-eqz v4, :cond_3

    move-object v4, v1

    const-string v5, "fx"

    .line 963
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 964
    move-object v4, v2

    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 965
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->value:Ljava/lang/Object;

    .line 976
    :goto_0
    return-void

    .line 966
    :cond_0
    move-object v4, v2

    const-string v5, "constant"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 967
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->constant:Ljava/lang/String;

    goto :goto_0

    .line 968
    :cond_1
    move-object v4, v2

    const-string v5, "factory"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 969
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$InstanceDeclarationElement;->factory:Ljava/lang/String;

    goto :goto_0

    .line 971
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_3
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Ljavafx/fxml/FXMLLoader$ValueElement;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

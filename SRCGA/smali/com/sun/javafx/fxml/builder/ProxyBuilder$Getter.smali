.class Lcom/sun/javafx/fxml/builder/ProxyBuilder$Getter;
.super Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;
.source "ProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/builder/ProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Getter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Getter;
    move-object v1, p1

    .local v1, "m":Ljava/lang/reflect/Method;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Property;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 542
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/ProxyBuilder$Getter;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "argStr":Ljava/lang/Object;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/ProxyBuilder$Getter;->method:Ljava/lang/reflect/Method;

    move-object v6, v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    move-object v3, v5

    .line 548
    .local v3, "to":Ljava/util/Collection;
    move-object v5, v2

    instance-of v5, v5, Ljava/util/Collection;

    if-eqz v5, :cond_0

    .line 549
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    move-object v4, v5

    .line 550
    .local v4, "from":Ljava/util/Collection;
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 551
    .line 554
    .end local v4    # "from":Ljava/util/Collection;
    :goto_0
    return-void

    .line 552
    :cond_0
    move-object v5, v3

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

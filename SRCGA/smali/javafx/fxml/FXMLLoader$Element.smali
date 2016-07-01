.class abstract Ljavafx/fxml/FXMLLoader$Element;
.super Ljava/lang/Object;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Element"
.end annotation


# instance fields
.field public final eventHandlerAttributes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljavafx/fxml/FXMLLoader$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public final instancePropertyAttributes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljavafx/fxml/FXMLLoader$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public final parent:Ljavafx/fxml/FXMLLoader$Element;

.field public final staticPropertyAttributes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljavafx/fxml/FXMLLoader$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public final staticPropertyElements:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljavafx/fxml/FXMLLoader$PropertyElement;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/fxml/FXMLLoader;

.field public value:Ljava/lang/Object;

.field private valueAdapter:Lcom/sun/javafx/fxml/BeanAdapter;


# direct methods
.method public constructor <init>(Ljavafx/fxml/FXMLLoader;)V
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 113
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    .line 114
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->valueAdapter:Lcom/sun/javafx/fxml/BeanAdapter;

    .line 116
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->eventHandlerAttributes:Ljava/util/LinkedList;

    .line 117
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->instancePropertyAttributes:Ljava/util/LinkedList;

    .line 118
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->staticPropertyAttributes:Ljava/util/LinkedList;

    .line 119
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->staticPropertyElements:Ljava/util/LinkedList;

    .line 122
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$000(Ljavafx/fxml/FXMLLoader;)Ljavafx/fxml/FXMLLoader$Element;

    move-result-object v3

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->parent:Ljavafx/fxml/FXMLLoader$Element;

    .line 123
    return-void
.end method

.method private varargs getControllerMethodHandle(Ljava/lang/String;[Ljavafx/fxml/FXMLLoader$SupportedType;)Ljavafx/fxml/FXMLLoader$MethodHandler;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 548
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object/from16 v1, p1

    .local v1, "handlerName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "types":[Ljavafx/fxml/FXMLLoader$SupportedType;
    move-object v8, v1

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 549
    move-object v8, v1

    const-string v9, "#"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 551
    move-object v8, v1

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 552
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 553
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v9, "Missing controller method."

    invoke-static {v8, v9}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v8

    throw v8

    .line 556
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v8}, Ljavafx/fxml/FXMLLoader;->access$1000(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    .line 557
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v9, "No controller specified."

    invoke-static {v8, v9}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v8

    throw v8

    .line 560
    :cond_1
    move-object v8, v2

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_3

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 561
    .local v6, "t":Ljavafx/fxml/FXMLLoader$SupportedType;
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v8}, Ljavafx/fxml/FXMLLoader;->access$1100(Ljavafx/fxml/FXMLLoader;)Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-result-object v8

    .line 562
    invoke-virtual {v8}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->getControllerMethods()Ljava/util/Map;

    move-result-object v8

    move-object v9, v6

    .line 563
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v9, v1

    .line 564
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    move-object v7, v8

    .line 565
    .local v7, "method":Ljava/lang/reflect/Method;
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 566
    new-instance v8, Ljavafx/fxml/FXMLLoader$MethodHandler;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v10}, Ljavafx/fxml/FXMLLoader;->access$1000(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v7

    move-object v12, v6

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/fxml/FXMLLoader$MethodHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljavafx/fxml/FXMLLoader$SupportedType;Ljavafx/fxml/FXMLLoader$1;)V

    move-object v0, v8

    .line 582
    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    .end local v6    # "t":Ljavafx/fxml/FXMLLoader$SupportedType;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-object v0

    .line 560
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    .restart local v6    # "t":Ljavafx/fxml/FXMLLoader$SupportedType;
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 569
    .end local v6    # "t":Ljavafx/fxml/FXMLLoader$SupportedType;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v8}, Ljavafx/fxml/FXMLLoader;->access$1100(Ljavafx/fxml/FXMLLoader;)Ljavafx/fxml/FXMLLoader$ControllerAccessor;

    move-result-object v8

    .line 570
    invoke-virtual {v8}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->getControllerMethods()Ljava/util/Map;

    move-result-object v8

    sget-object v9, Ljavafx/fxml/FXMLLoader$SupportedType;->PARAMETERLESS:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 571
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v9, v1

    .line 572
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    move-object v3, v8

    .line 573
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 574
    new-instance v8, Ljavafx/fxml/FXMLLoader$MethodHandler;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v10}, Ljavafx/fxml/FXMLLoader;->access$1000(Ljavafx/fxml/FXMLLoader;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v3

    sget-object v12, Ljavafx/fxml/FXMLLoader$SupportedType;->PARAMETERLESS:Ljavafx/fxml/FXMLLoader$SupportedType;

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/fxml/FXMLLoader$MethodHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljavafx/fxml/FXMLLoader$SupportedType;Ljavafx/fxml/FXMLLoader$1;)V

    move-object v0, v8

    goto :goto_1

    .line 577
    :cond_4
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1

    .line 582
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_5
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method private getExpressionObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "handlerValue":Ljava/lang/String;
    move-object v3, v1

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    move-object v3, v1

    const-string v4, "$"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 522
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 523
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v4, "Missing expression reference."

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 526
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/lang/String;)Lcom/sun/javafx/fxml/expression/KeyPath;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 527
    .local v2, "expression":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 528
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resolve expression : $"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 530
    :cond_1
    move-object v3, v2

    move-object v0, v3

    .line 532
    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    .end local v2    # "expression":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private getExpressionObjectOfType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "handlerValue":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/fxml/FXMLLoader$Element;->getExpressionObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 537
    .local v3, "expression":Ljava/lang/Object;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 538
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    move-object v4, v3

    move-object v0, v4

    .line 544
    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :goto_0
    return-object v0

    .line 541
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error resolving \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" expression."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Does not point to a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    .line 542
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 541
    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 544
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method private isBidirectionalBindingExpression(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "aValue":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "#{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    return v0
.end method

.method private isBindingExpression(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "aValue":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "${"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, "}"

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    return v0

    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private populateArrayFromString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    .local v2, "stringValue":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v3, v7

    .line 459
    .local v3, "propertyValue":Ljava/lang/Object;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 461
    .local v4, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 462
    move-object v7, v2

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 463
    .local v5, "values":[Ljava/lang/String;
    move-object v7, v4

    move-object v8, v5

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 464
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 465
    move-object v7, v3

    move v8, v6

    move-object v9, v0

    move-object v10, v5

    move v11, v6

    aget-object v10, v10, v11

    .line 466
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavafx/fxml/FXMLLoader$Element;->resolvePrefixedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v1

    .line 467
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 466
    invoke-static {v9, v10}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    .line 465
    invoke-static {v7, v8, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 464
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 469
    .line 472
    .end local v5    # "values":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_0
    :goto_1
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    return-object v0

    .line 470
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :cond_1
    move-object v7, v4

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    goto :goto_1
.end method

.method private populateListFromString(Lcom/sun/javafx/fxml/BeanAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object/from16 v1, p1

    .local v1, "valueAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object/from16 v2, p2

    .local v2, "listPropertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "stringValue":Ljava/lang/String;
    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/fxml/BeanAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object v4, v12

    .line 486
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/fxml/BeanAdapter;->getGenericType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v12

    move-object v5, v12

    .line 487
    .local v5, "listType":Ljava/lang/reflect/Type;
    move-object v12, v5

    invoke-static {v12}, Lcom/sun/javafx/fxml/BeanAdapter;->getGenericListItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    move-object v6, v12

    .line 489
    .local v6, "itemType":Ljava/lang/reflect/Type;
    move-object v12, v6

    instance-of v12, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v12, :cond_0

    .line 490
    move-object v12, v6

    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    move-object v6, v12

    .line 493
    :cond_0
    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 494
    move-object v12, v3

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 496
    .local v7, "values":[Ljava/lang/String;
    move-object v12, v7

    move-object v8, v12

    move-object v12, v8

    array-length v12, v12

    move v9, v12

    const/4 v12, 0x0

    move v10, v12

    :goto_0
    move v12, v10

    move v13, v9

    if-ge v12, v13, :cond_1

    move-object v12, v8

    move v13, v10

    aget-object v12, v12, v13

    move-object v11, v12

    .line 497
    .local v11, "aValue":Ljava/lang/String;
    move-object v12, v11

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 498
    move-object v12, v4

    move-object v13, v0

    move-object v14, v11

    .line 499
    invoke-direct {v13, v14}, Ljavafx/fxml/FXMLLoader$Element;->resolvePrefixedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v6

    check-cast v14, Ljava/lang/Class;

    invoke-static {v13, v14}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .line 498
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 496
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 503
    .end local v7    # "values":[Ljava/lang/String;
    .end local v11    # "aValue":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private processObservableListHandler(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "handlerValue":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v2, v4

    .line 626
    .local v2, "list":Ljavafx/collections/ObservableList;
    move-object v4, v1

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Ljavafx/fxml/FXMLLoader$SupportedType;->LIST_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6}, Ljavafx/fxml/FXMLLoader$Element;->getControllerMethodHandle(Ljava/lang/String;[Ljavafx/fxml/FXMLLoader$SupportedType;)Ljavafx/fxml/FXMLLoader$MethodHandler;

    move-result-object v4

    move-object v3, v4

    .line 628
    .local v3, "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 629
    move-object v4, v2

    new-instance v5, Ljavafx/fxml/FXMLLoader$ObservableListChangeAdapter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader$ObservableListChangeAdapter;-><init>(Ljavafx/fxml/FXMLLoader$MethodHandler;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 633
    .line 644
    .end local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_0
    :goto_0
    return-void

    .line 631
    .restart local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller method \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 633
    .end local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_2
    move-object v4, v1

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 634
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/fxml/FXMLLoader$Element;->getExpressionObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 635
    .local v3, "listener":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/collections/ListChangeListener;

    if-eqz v4, :cond_3

    .line 636
    move-object v4, v2

    move-object v5, v3

    check-cast v5, Ljavafx/collections/ListChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    goto :goto_0

    .line 637
    :cond_3
    move-object v4, v3

    instance-of v4, v4, Ljavafx/beans/InvalidationListener;

    if-eqz v4, :cond_4

    .line 638
    move-object v4, v2

    move-object v5, v3

    check-cast v5, Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_0

    .line 640
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error resolving \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" expression."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Must be either ListChangeListener or InvalidationListener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4
.end method

.method private processObservableMapHandler(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "handlerValue":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    check-cast v4, Ljavafx/collections/ObservableMap;

    move-object v2, v4

    .line 648
    .local v2, "map":Ljavafx/collections/ObservableMap;
    move-object v4, v1

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 649
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Ljavafx/fxml/FXMLLoader$SupportedType;->MAP_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6}, Ljavafx/fxml/FXMLLoader$Element;->getControllerMethodHandle(Ljava/lang/String;[Ljavafx/fxml/FXMLLoader$SupportedType;)Ljavafx/fxml/FXMLLoader$MethodHandler;

    move-result-object v4

    move-object v3, v4

    .line 650
    .local v3, "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 651
    move-object v4, v2

    new-instance v5, Ljavafx/fxml/FXMLLoader$ObservableMapChangeAdapter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader$ObservableMapChangeAdapter;-><init>(Ljavafx/fxml/FXMLLoader$MethodHandler;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 655
    .line 666
    .end local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_0
    :goto_0
    return-void

    .line 653
    .restart local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller method \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 655
    .end local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_2
    move-object v4, v1

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 656
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/fxml/FXMLLoader$Element;->getExpressionObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 657
    .local v3, "listener":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/collections/MapChangeListener;

    if-eqz v4, :cond_3

    .line 658
    move-object v4, v2

    move-object v5, v3

    check-cast v5, Ljavafx/collections/MapChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    goto :goto_0

    .line 659
    :cond_3
    move-object v4, v3

    instance-of v4, v4, Ljavafx/beans/InvalidationListener;

    if-eqz v4, :cond_4

    .line 660
    move-object v4, v2

    move-object v5, v3

    check-cast v5, Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_0

    .line 662
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error resolving \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" expression."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Must be either MapChangeListener or InvalidationListener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4
.end method

.method private processObservableSetHandler(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "handlerValue":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    check-cast v4, Ljavafx/collections/ObservableSet;

    move-object v2, v4

    .line 670
    .local v2, "set":Ljavafx/collections/ObservableSet;
    move-object v4, v1

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 671
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    sget-object v9, Ljavafx/fxml/FXMLLoader$SupportedType;->SET_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v9, v7, v8

    invoke-direct {v4, v5, v6}, Ljavafx/fxml/FXMLLoader$Element;->getControllerMethodHandle(Ljava/lang/String;[Ljavafx/fxml/FXMLLoader$SupportedType;)Ljavafx/fxml/FXMLLoader$MethodHandler;

    move-result-object v4

    move-object v3, v4

    .line 672
    .local v3, "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 673
    move-object v4, v2

    new-instance v5, Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader$ObservableSetChangeAdapter;-><init>(Ljavafx/fxml/FXMLLoader$MethodHandler;)V

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 677
    .line 688
    .end local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_0
    :goto_0
    return-void

    .line 675
    .restart local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Controller method \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 677
    .end local v3    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_2
    move-object v4, v1

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 678
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/fxml/FXMLLoader$Element;->getExpressionObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 679
    .local v3, "listener":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/collections/SetChangeListener;

    if-eqz v4, :cond_3

    .line 680
    move-object v4, v2

    move-object v5, v3

    check-cast v5, Ljavafx/collections/SetChangeListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    goto :goto_0

    .line 681
    :cond_3
    move-object v4, v3

    instance-of v4, v4, Ljavafx/beans/InvalidationListener;

    if-eqz v4, :cond_4

    .line 682
    move-object v4, v2

    move-object v5, v3

    check-cast v5, Ljavafx/beans/InvalidationListener;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_0

    .line 684
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error resolving \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" expression."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Must be either SetChangeListener or InvalidationListener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4
.end method

.method private processPropertyHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object/from16 v1, p1

    .local v1, "attributeName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "handlerValue":Ljava/lang/String;
    const-string v8, "on"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v8

    .line 692
    .local v3, "i":I
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "Change"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    move v4, v8

    .line 694
    .local v4, "j":I
    move v8, v3

    move v9, v4

    if-eq v8, v9, :cond_1

    .line 695
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v4

    .line 696
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 698
    .local v5, "key":Ljava/lang/String;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/fxml/FXMLLoader$Element;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/fxml/BeanAdapter;->getPropertyModel(Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;

    move-result-object v8

    move-object v6, v8

    .line 699
    .local v6, "propertyModel":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Object;>;"
    move-object v8, v6

    if-nez v8, :cond_0

    .line 700
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not define"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " a property model for \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v8

    throw v8

    .line 704
    :cond_0
    move-object v8, v2

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 705
    move-object v8, v0

    move-object v9, v2

    const/4 v10, 0x2

    new-array v10, v10, [Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    sget-object v13, Ljavafx/fxml/FXMLLoader$SupportedType;->PROPERTY_CHANGE_LISTENER:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    sget-object v13, Ljavafx/fxml/FXMLLoader$SupportedType;->EVENT:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v13, v11, v12

    invoke-direct {v8, v9, v10}, Ljavafx/fxml/FXMLLoader$Element;->getControllerMethodHandle(Ljava/lang/String;[Ljavafx/fxml/FXMLLoader$SupportedType;)Ljavafx/fxml/FXMLLoader$MethodHandler;

    move-result-object v8

    move-object v7, v8

    .line 706
    .local v7, "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v8, v7

    if-eqz v8, :cond_3

    .line 707
    move-object v8, v7

    invoke-static {v8}, Ljavafx/fxml/FXMLLoader$MethodHandler;->access$1400(Ljavafx/fxml/FXMLLoader$MethodHandler;)Ljavafx/fxml/FXMLLoader$SupportedType;

    move-result-object v8

    sget-object v9, Ljavafx/fxml/FXMLLoader$SupportedType;->EVENT:Ljavafx/fxml/FXMLLoader$SupportedType;

    if-ne v8, v9, :cond_2

    .line 710
    move-object v8, v6

    new-instance v9, Ljavafx/fxml/FXMLLoader$Element$1;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Ljavafx/fxml/FXMLLoader$Element$1;-><init>(Ljavafx/fxml/FXMLLoader$Element;Ljavafx/fxml/FXMLLoader$MethodHandler;)V

    invoke-interface {v8, v9}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 722
    .line 735
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "propertyModel":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Object;>;"
    .end local v7    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_1
    :goto_0
    return-void

    .line 717
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "propertyModel":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Object;>;"
    .restart local v7    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_2
    move-object v8, v6

    new-instance v9, Ljavafx/fxml/FXMLLoader$PropertyChangeAdapter;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v7

    invoke-direct {v10, v11}, Ljavafx/fxml/FXMLLoader$PropertyChangeAdapter;-><init>(Ljavafx/fxml/FXMLLoader$MethodHandler;)V

    invoke-interface {v8, v9}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    goto :goto_0

    .line 720
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Controller method \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" not found."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v8

    throw v8

    .line 722
    .end local v7    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_4
    move-object v8, v2

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 723
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Ljavafx/fxml/FXMLLoader$Element;->getExpressionObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 724
    .local v7, "listener":Ljava/lang/Object;
    move-object v8, v7

    instance-of v8, v8, Ljavafx/beans/value/ChangeListener;

    if-eqz v8, :cond_5

    .line 725
    move-object v8, v6

    move-object v9, v7

    check-cast v9, Ljavafx/beans/value/ChangeListener;

    invoke-interface {v8, v9}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    goto :goto_0

    .line 726
    :cond_5
    move-object v8, v7

    instance-of v8, v8, Ljavafx/beans/InvalidationListener;

    if-eqz v8, :cond_6

    .line 727
    move-object v8, v6

    move-object v9, v7

    check-cast v9, Ljavafx/beans/InvalidationListener;

    invoke-interface {v8, v9}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_0

    .line 729
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error resolving \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" expression."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Must be either ChangeListener or InvalidationListener"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v8

    throw v8
.end method

.method private processValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "sourceType":Ljava/lang/Class;
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "aValue":Ljava/lang/String;
    const/4 v7, 0x0

    move v4, v7

    .line 343
    .local v4, "processed":Z
    move-object v7, v1

    if-nez v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$Element;->isTyped()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 344
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$Element;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v7

    move-object v5, v7

    .line 345
    .local v5, "valueAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 347
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v6

    if-nez v7, :cond_0

    .line 348
    new-instance v7, Lcom/sun/javafx/fxml/PropertyNotFoundException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Property \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" does not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or is read-only."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/javafx/fxml/PropertyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 352
    :cond_0
    const-class v7, Ljava/util/List;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    move-object v8, v2

    .line 353
    invoke-virtual {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->isReadOnly(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 354
    move-object v7, v0

    move-object v8, v5

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Ljavafx/fxml/FXMLLoader$Element;->populateListFromString(Lcom/sun/javafx/fxml/BeanAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v7, 0x1

    move v4, v7

    .line 362
    .end local v5    # "valueAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    move v7, v4

    if-nez v7, :cond_2

    .line 363
    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v10, v11}, Ljavafx/fxml/FXMLLoader$Element;->resolvePrefixedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljavafx/fxml/FXMLLoader$Element;->applyProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 364
    const/4 v7, 0x1

    move v4, v7

    .line 366
    :cond_2
    move v7, v4

    move v0, v7

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    return v0

    .line 356
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    .restart local v5    # "valueAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    .restart local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 357
    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    move-object v10, v0

    move-object v11, v6

    move-object v12, v3

    .line 358
    invoke-direct {v10, v11, v12}, Ljavafx/fxml/FXMLLoader$Element;->populateArrayFromString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 357
    invoke-virtual {v7, v8, v9, v10}, Ljavafx/fxml/FXMLLoader$Element;->applyProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 359
    const/4 v7, 0x1

    move v4, v7

    goto :goto_0
.end method

.method private resolvePrefixedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "aValue":Ljava/lang/String;
    move-object v3, v1

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    move-object v3, v1

    const-string v4, "\\"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 376
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, "\\"

    .line 377
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string v4, "@"

    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string v4, "%"

    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string v4, "$"

    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string v4, "#{"

    .line 381
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v4, "Invalid escape sequence."

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 384
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .line 444
    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :goto_0
    return-object v0

    .line 385
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :cond_2
    move-object v3, v1

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 386
    move-object v3, v1

    const-string v4, "@"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 387
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 388
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v4, "Missing relative path."

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 390
    :cond_3
    move-object v3, v1

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 392
    move-object v3, v0

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader$Element;->warnDeprecatedEscapeSequence(Ljava/lang/String;)V

    .line 393
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 395
    :cond_4
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_6

    .line 396
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-virtual {v3}, Ljavafx/fxml/FXMLLoader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move-object v2, v3

    .line 397
    .local v2, "res":Ljava/net/URL;
    move-object v3, v2

    if-nez v3, :cond_5

    .line 398
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found on the classpath"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 400
    :cond_5
    move-object v3, v2

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 403
    .end local v2    # "res":Ljava/net/URL;
    :cond_6
    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v5}, Ljavafx/fxml/FXMLLoader;->access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 404
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 405
    .local v2, "e":Ljava/net/MalformedURLException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v5}, Ljavafx/fxml/FXMLLoader;->access$800(Ljavafx/fxml/FXMLLoader;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    .line 444
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_7
    move-object v3, v1

    move-object v0, v3

    goto/16 :goto_0

    .line 409
    :cond_8
    move-object v3, v1

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 410
    move-object v3, v1

    const-string v4, "%"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 411
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 412
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v4, "Missing resource key."

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 414
    :cond_9
    move-object v3, v1

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 416
    move-object v3, v0

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader$Element;->warnDeprecatedEscapeSequence(Ljava/lang/String;)V

    .line 417
    move-object v3, v1

    move-object v0, v3

    goto/16 :goto_0

    .line 420
    :cond_a
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$900(Ljavafx/fxml/FXMLLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    if-nez v3, :cond_b

    .line 421
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v4, "No resources specified."

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 423
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$900(Ljavafx/fxml/FXMLLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 424
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 427
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$900(Ljavafx/fxml/FXMLLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0

    .line 429
    :cond_d
    move-object v3, v1

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 430
    move-object v3, v1

    const-string v4, "$"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 431
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 432
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v4, "Missing expression."

    invoke-static {v3, v4}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v3

    throw v3

    .line 434
    :cond_e
    move-object v3, v1

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 436
    move-object v3, v0

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader$Element;->warnDeprecatedEscapeSequence(Ljava/lang/String;)V

    .line 437
    move-object v3, v1

    move-object v0, v3

    goto/16 :goto_0

    .line 438
    :cond_f
    move-object v3, v1

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 440
    const/4 v3, 0x0

    move-object v0, v3

    goto/16 :goto_0

    .line 442
    :cond_10
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v3}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/fxml/expression/KeyPath;->parse(Ljava/lang/String;)Lcom/sun/javafx/fxml/expression/KeyPath;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "element":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljava/util/List;

    if-eqz v7, :cond_1

    .line 152
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    move-object v2, v7

    .line 168
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    move-object v7, v2

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 169
    return-void

    .line 154
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v3, v7

    .line 155
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v3

    const-class v8, Ljavafx/beans/DefaultProperty;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Ljavafx/beans/DefaultProperty;

    move-object v4, v7

    .line 156
    .local v4, "defaultProperty":Ljavafx/beans/DefaultProperty;
    move-object v7, v4

    invoke-interface {v7}, Ljavafx/beans/DefaultProperty;->value()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 159
    .local v5, "defaultPropertyName":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$Element;->getProperties()Ljava/util/Map;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v2, v7

    .line 162
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-class v7, Ljava/util/Map;

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 163
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$Element;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->getGenericType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v7

    move-object v6, v7

    .line 164
    .local v6, "listType":Ljava/lang/reflect/Type;
    move-object v7, v1

    move-object v8, v6

    invoke-static {v8}, Lcom/sun/javafx/fxml/BeanAdapter;->getListItemType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    goto :goto_0
.end method

.method public applyProperty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 512
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/fxml/FXMLLoader$Element;->getProperties()Ljava/util/Map;

    move-result-object v4

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 516
    :goto_0
    return-void

    .line 514
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/fxml/BeanAdapter;->put(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$Element;->isTyped()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/fxml/FXMLLoader$Element;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    return-object v0

    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    goto :goto_0
.end method

.method public getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;
    .locals 6

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$Element;->valueAdapter:Lcom/sun/javafx/fxml/BeanAdapter;

    if-nez v1, :cond_0

    .line 197
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/BeanAdapter;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/fxml/FXMLLoader$Element;->valueAdapter:Lcom/sun/javafx/fxml/BeanAdapter;

    .line 200
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$Element;->valueAdapter:Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    return-object v0
.end method

.method public isCollection()Z
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 130
    const/4 v4, 0x1

    move v1, v4

    .line 142
    .local v1, "collection":Z
    :goto_0
    move v4, v1

    move v0, v4

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    return v0

    .line 132
    .end local v1    # "collection":Z
    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 133
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v2

    const-class v5, Ljavafx/beans/DefaultProperty;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ljavafx/beans/DefaultProperty;

    move-object v3, v4

    .line 135
    .local v3, "defaultProperty":Ljavafx/beans/DefaultProperty;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 136
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/fxml/FXMLLoader$Element;->getProperties()Ljava/util/Map;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v5}, Ljavafx/beans/DefaultProperty;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/List;

    move v1, v4

    .restart local v1    # "collection":Z
    goto :goto_0

    .line 138
    .end local v1    # "collection":Z
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    .restart local v1    # "collection":Z
    goto :goto_0
.end method

.method public isTyped()Z
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    return v0

    .restart local v0    # "this":Ljavafx/fxml/FXMLLoader$Element;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v7, v1

    if-nez v7, :cond_8

    .line 244
    move-object v7, v2

    const-string v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 245
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 246
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Lcom/sun/javafx/fxml/LoadListener;->readEventHandlerAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->eventHandlerAttributes:Ljava/util/LinkedList;

    new-instance v8, Ljavafx/fxml/FXMLLoader$Attribute;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Ljavafx/fxml/FXMLLoader$Attribute;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 285
    :goto_0
    return-void

    .line 251
    :cond_1
    move-object v7, v2

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v4, v7

    .line 253
    .local v4, "i":I
    move v7, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 255
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 256
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v7

    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/javafx/fxml/LoadListener;->readPropertyAttribute(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 259
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->instancePropertyAttributes:Ljava/util/LinkedList;

    new-instance v8, Ljavafx/fxml/FXMLLoader$Attribute;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Ljavafx/fxml/FXMLLoader$Attribute;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 280
    :cond_3
    :goto_1
    goto :goto_0

    .line 262
    :cond_4
    move-object v7, v2

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 263
    .local v5, "name":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    move-object v8, v2

    const/4 v9, 0x0

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$400(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 265
    .local v6, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v6

    if-eqz v7, :cond_6

    .line 266
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 267
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v7

    move-object v8, v5

    move-object v9, v6

    move-object v10, v3

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/javafx/fxml/LoadListener;->readPropertyAttribute(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 270
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->staticPropertyAttributes:Ljava/util/LinkedList;

    new-instance v8, Ljavafx/fxml/FXMLLoader$Attribute;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    move-object v11, v6

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Ljavafx/fxml/FXMLLoader$Attribute;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 271
    :cond_6
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$500(Ljavafx/fxml/FXMLLoader;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 272
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 273
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v7}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Lcom/sun/javafx/fxml/LoadListener;->readUnknownStaticPropertyAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a valid attribute."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 282
    .end local v4    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a valid attribute."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7
.end method

.method public processCharacters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v2, "Unexpected characters in input stream."

    invoke-static {v1, v2}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v1

    throw v1
.end method

.method public processEndElement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method public processEventHandlerAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->eventHandlerAttributes:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_9

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$500(Ljavafx/fxml/FXMLLoader;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 587
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->eventHandlerAttributes:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v6

    :goto_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/fxml/FXMLLoader$Attribute;

    move-object v2, v6

    .line 588
    .local v2, "attribute":Ljavafx/fxml/FXMLLoader$Attribute;
    move-object v6, v2

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Attribute;->value:Ljava/lang/String;

    move-object v3, v6

    .line 589
    .local v3, "handlerName":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    instance-of v6, v6, Ljavafx/collections/ObservableList;

    if-eqz v6, :cond_0

    move-object v6, v2

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    const-string v7, "onChange"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 590
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader$Element;->processObservableListHandler(Ljava/lang/String;)V

    .line 620
    :goto_1
    goto :goto_0

    .line 591
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    instance-of v6, v6, Ljavafx/collections/ObservableMap;

    if-eqz v6, :cond_1

    move-object v6, v2

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    const-string v7, "onChange"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 592
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader$Element;->processObservableMapHandler(Ljava/lang/String;)V

    goto :goto_1

    .line 593
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    instance-of v6, v6, Ljavafx/collections/ObservableSet;

    if-eqz v6, :cond_2

    move-object v6, v2

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    const-string v7, "onChange"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 594
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader$Element;->processObservableSetHandler(Ljava/lang/String;)V

    goto :goto_1

    .line 595
    :cond_2
    move-object v6, v2

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    const-string v7, "Change"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 596
    move-object v6, v0

    move-object v7, v2

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljavafx/fxml/FXMLLoader$Element;->processPropertyHandler(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 598
    :cond_3
    const/4 v6, 0x0

    move-object v4, v6

    .line 599
    .local v4, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<+Ljavafx/event/Event;>;"
    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    sget-object v11, Ljavafx/fxml/FXMLLoader$SupportedType;->EVENT:Ljavafx/fxml/FXMLLoader$SupportedType;

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Ljavafx/fxml/FXMLLoader$Element;->getControllerMethodHandle(Ljava/lang/String;[Ljavafx/fxml/FXMLLoader$SupportedType;)Ljavafx/fxml/FXMLLoader$MethodHandler;

    move-result-object v6

    move-object v5, v6

    .line 600
    .local v5, "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v6, v5

    if-eqz v6, :cond_4

    .line 601
    new-instance v6, Ljavafx/fxml/FXMLLoader$ControllerMethodEventHandler;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    invoke-direct {v7, v8}, Ljavafx/fxml/FXMLLoader$ControllerMethodEventHandler;-><init>(Ljavafx/fxml/FXMLLoader$MethodHandler;)V

    move-object v4, v6

    .line 604
    :cond_4
    move-object v6, v4

    if-nez v6, :cond_5

    .line 605
    move-object v6, v0

    move-object v7, v3

    const-class v8, Ljavafx/event/EventHandler;

    invoke-direct {v6, v7, v8}, Ljavafx/fxml/FXMLLoader$Element;->getExpressionObjectOfType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/event/EventHandler;

    move-object v4, v6

    .line 608
    :cond_5
    move-object v6, v4

    if-nez v6, :cond_8

    .line 609
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$1300(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngine;

    move-result-object v6

    if-nez v6, :cond_7

    .line 610
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error resolving "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Attribute;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', either the event handler is not in the Namespace or there is an error in the script."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v6

    throw v6

    .line 614
    :cond_7
    new-instance v6, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader;->access$1300(Ljavafx/fxml/FXMLLoader;)Ljavax/script/ScriptEngine;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavafx/fxml/FXMLLoader$ScriptEventHandler;-><init>(Ljava/lang/String;Ljavax/script/ScriptEngine;)V

    move-object v4, v6

    .line 618
    :cond_8
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader$Element;->getValueAdapter()Lcom/sun/javafx/fxml/BeanAdapter;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_1

    .line 622
    .end local v2    # "attribute":Ljavafx/fxml/FXMLLoader$Attribute;
    .end local v3    # "handlerName":Ljava/lang/String;
    .end local v4    # "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<+Ljavafx/event/Event;>;"
    .end local v5    # "handler":Ljavafx/fxml/FXMLLoader$MethodHandler;
    :cond_9
    return-void
.end method

.method public processInstancePropertyAttributes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->instancePropertyAttributes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 234
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$Element;->instancePropertyAttributes:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/fxml/FXMLLoader$Attribute;

    move-object v2, v3

    .line 235
    .local v2, "attribute":Ljavafx/fxml/FXMLLoader$Attribute;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/fxml/FXMLLoader$Element;->processPropertyAttribute(Ljavafx/fxml/FXMLLoader$Attribute;)V

    .line 236
    goto :goto_0

    .line 238
    .end local v2    # "attribute":Ljavafx/fxml/FXMLLoader$Attribute;
    :cond_0
    return-void
.end method

.method public processPropertyAttribute(Ljavafx/fxml/FXMLLoader$Attribute;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/fxml/FXMLLoader$Attribute;
    move-object v7, v1

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Attribute;->value:Ljava/lang/String;

    move-object v2, v7

    .line 290
    .local v2, "value":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Ljavafx/fxml/FXMLLoader$Element;->isBindingExpression(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 294
    move-object v7, v1

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Attribute;->sourceType:Ljava/lang/Class;

    if-eqz v7, :cond_0

    .line 295
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v8, "Cannot bind to static property."

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 298
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader$Element;->isTyped()Z

    move-result v7

    if-nez v7, :cond_1

    .line 299
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v8, "Cannot bind to untyped object."

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 304
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    instance-of v7, v7, Ljavafx/util/Builder;

    if-eqz v7, :cond_2

    .line 305
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v8, "Cannot bind to builder property."

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 308
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-virtual {v7}, Ljavafx/fxml/FXMLLoader;->impl_isStaticLoad()Z

    move-result v7

    if-nez v7, :cond_3

    .line 309
    move-object v7, v2

    const-string v8, "${"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move-object v9, v2

    .line 310
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    .line 309
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 311
    move-object v7, v2

    invoke-static {v7}, Lcom/sun/javafx/fxml/expression/Expression;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/fxml/expression/Expression;

    move-result-object v7

    move-object v3, v7

    .line 314
    .local v3, "expression":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v7, Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/sun/javafx/fxml/BeanAdapter;-><init>(Ljava/lang/Object;)V

    move-object v4, v7

    .line 315
    .local v4, "targetAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->getPropertyModel(Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;

    move-result-object v7

    move-object v5, v7

    .line 316
    .local v5, "propertyModel":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Object;>;"
    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 318
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v5

    instance-of v7, v7, Ljavafx/beans/property/Property;

    if-eqz v7, :cond_3

    .line 319
    move-object v7, v5

    check-cast v7, Ljavafx/beans/property/Property;

    new-instance v8, Lcom/sun/javafx/fxml/expression/ExpressionValue;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v10}, Ljavafx/fxml/FXMLLoader;->access$600(Ljavafx/fxml/FXMLLoader;)Ljavafx/collections/ObservableMap;

    move-result-object v10

    move-object v11, v3

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/fxml/expression/ExpressionValue;-><init>(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Class;)V

    invoke-interface {v7, v8}, Ljavafx/beans/property/Property;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 322
    .line 327
    .end local v3    # "expression":Lcom/sun/javafx/fxml/expression/Expression;
    .end local v4    # "targetAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    .end local v5    # "propertyModel":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Object;>;"
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_0
    return-void

    .line 322
    :cond_4
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Ljavafx/fxml/FXMLLoader$Element;->isBidirectionalBindingExpression(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 323
    move-object v7, v0

    iget-object v7, v7, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "This feature is not currently enabled."

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljavafx/fxml/FXMLLoader;->access$700(Ljavafx/fxml/FXMLLoader;Ljava/lang/Throwable;)Ljavafx/fxml/LoadException;

    move-result-object v7

    throw v7

    .line 325
    :cond_5
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Ljavafx/fxml/FXMLLoader$Attribute;->sourceType:Ljava/lang/Class;

    move-object v9, v1

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$Attribute;->name:Ljava/lang/String;

    move-object v10, v2

    invoke-direct {v7, v8, v9, v10}, Ljavafx/fxml/FXMLLoader$Element;->processValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0
.end method

.method public processStartElement()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    const/4 v6, 0x0

    move v1, v6

    .local v1, "i":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v6

    move v2, v6

    .local v2, "n":I
    :goto_0
    move v6, v1

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 210
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v6

    move v7, v1

    invoke-interface {v6, v7}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 211
    .local v3, "prefix":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v6

    move v7, v1

    invoke-interface {v6, v7}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 212
    .local v4, "localName":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$200(Ljavafx/fxml/FXMLLoader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v6

    move v7, v1

    invoke-interface {v6, v7}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 214
    .local v5, "value":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    const-string v7, "fx"

    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    invoke-static {v6}, Ljavafx/fxml/FXMLLoader;->access$300(Ljavafx/fxml/FXMLLoader;)Lcom/sun/javafx/fxml/LoadListener;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/fxml/LoadListener;->readInternalAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Ljavafx/fxml/FXMLLoader$Element;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "localName":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/fxml/LoadException;
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 173
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v5, "Cannot set value on this element."

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 177
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 178
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v2

    const-class v5, Ljavafx/beans/DefaultProperty;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Ljavafx/beans/DefaultProperty;

    move-object v3, v4

    .line 179
    .local v3, "defaultProperty":Ljavafx/beans/DefaultProperty;
    move-object v4, v3

    if-nez v4, :cond_1

    .line 180
    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$Element;->this$0:Ljavafx/fxml/FXMLLoader;

    const-string v5, "Element does not define a default property."

    invoke-static {v4, v5}, Ljavafx/fxml/FXMLLoader;->access$100(Ljavafx/fxml/FXMLLoader;Ljava/lang/String;)Ljavafx/fxml/LoadException;

    move-result-object v4

    throw v4

    .line 183
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/fxml/FXMLLoader$Element;->getProperties()Ljava/util/Map;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v5}, Ljavafx/beans/DefaultProperty;->value()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    return-void
.end method

.method public updateValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->value:Ljava/lang/Object;

    .line 188
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$Element;->valueAdapter:Lcom/sun/javafx/fxml/BeanAdapter;

    .line 189
    return-void
.end method

.method public warnDeprecatedEscapeSequence(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$Element;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a deprecated escape sequence. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Please use \\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 508
    return-void
.end method

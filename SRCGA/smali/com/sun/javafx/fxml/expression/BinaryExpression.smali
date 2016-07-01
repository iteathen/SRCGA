.class public final Lcom/sun/javafx/fxml/expression/BinaryExpression;
.super Lcom/sun/javafx/fxml/expression/Expression;
.source "BinaryExpression.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/fxml/expression/Expression",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final evaluator:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<TU;TU;TT;>;"
        }
    .end annotation
.end field

.field private final left:Lcom/sun/javafx/fxml/expression/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<TU;>;"
        }
    .end annotation
.end field

.field private final right:Lcom/sun/javafx/fxml/expression/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<TU;>;",
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<TU;>;",
            "Ljava/util/function/BiFunction",
            "<TU;TU;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "left":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<TU;>;"
    move-object v2, p2

    .local v2, "right":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<TU;>;"
    move-object v3, p3

    .local v3, "evaluator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TU;TU;TT;>;"
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/fxml/expression/Expression;-><init>()V

    .line 40
    move-object v4, v1

    if-nez v4, :cond_0

    .line 41
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 44
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    .line 45
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 48
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/fxml/expression/BinaryExpression;->left:Lcom/sun/javafx/fxml/expression/Expression;

    .line 49
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/fxml/expression/BinaryExpression;->right:Lcom/sun/javafx/fxml/expression/Expression;

    .line 50
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/fxml/expression/BinaryExpression;->evaluator:Ljava/util/function/BiFunction;

    .line 51
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;->evaluator:Ljava/util/function/BiFunction;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/BinaryExpression;->left:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/fxml/expression/Expression;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/BinaryExpression;->right:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/fxml/expression/Expression;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    return-object v0
.end method

.method protected getArguments(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/fxml/expression/KeyPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "arguments":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/fxml/expression/KeyPath;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;->left:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->getArguments(Ljava/util/List;)V

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;->right:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->getArguments(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public isDefined(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;->left:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->isDefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;->right:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->isDefined(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLValue()Z
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    return v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/BinaryExpression;, "Lcom/sun/javafx/fxml/expression/BinaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

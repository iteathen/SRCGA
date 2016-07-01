.class public final Lcom/sun/javafx/fxml/expression/UnaryExpression;
.super Lcom/sun/javafx/fxml/expression/Expression;
.source "UnaryExpression.java"


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
.field private final evaluator:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<TU;TT;>;"
        }
    .end annotation
.end field

.field private final operand:Lcom/sun/javafx/fxml/expression/Expression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/Function;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<TU;>;",
            "Ljava/util/function/Function",
            "<TU;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "operand":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<TU;>;"
    move-object v2, p2

    .local v2, "evaluator":Ljava/util/function/Function;, "Ljava/util/function/Function<TU;TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/fxml/expression/Expression;-><init>()V

    .line 39
    move-object v3, v1

    if-nez v3, :cond_0

    .line 40
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 43
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/UnaryExpression;->operand:Lcom/sun/javafx/fxml/expression/Expression;

    .line 44
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/fxml/expression/UnaryExpression;->evaluator:Ljava/util/function/Function;

    .line 45
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/UnaryExpression;->evaluator:Ljava/util/function/Function;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/UnaryExpression;->operand:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/fxml/expression/Expression;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
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
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "arguments":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/fxml/expression/KeyPath;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/UnaryExpression;->operand:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->getArguments(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method public isDefined(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/UnaryExpression;->operand:Lcom/sun/javafx/fxml/expression/Expression;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->isDefined(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
    return v0
.end method

.method public isLValue()Z
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
    return v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/UnaryExpression;, "Lcom/sun/javafx/fxml/expression/UnaryExpression<TU;TT;>;"
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TT;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

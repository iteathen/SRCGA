.class public Lcom/sun/javafx/fxml/expression/LiteralExpression;
.super Lcom/sun/javafx/fxml/expression/Expression;
.source "LiteralExpression.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/fxml/expression/Expression",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/fxml/expression/Expression;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;->value:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;->value:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    return-object v0
.end method

.method protected getArguments(Ljava/util/List;)V
    .locals 0
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
    .line 63
    .local p0, "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    .local p1, "arguments":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/fxml/expression/KeyPath;>;"
    return-void
.end method

.method public isDefined(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    return v0
.end method

.method public isLValue()Z
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/expression/LiteralExpression;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
    return-object v0
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
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/LiteralExpression;, "Lcom/sun/javafx/fxml/expression/LiteralExpression<TT;>;"
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

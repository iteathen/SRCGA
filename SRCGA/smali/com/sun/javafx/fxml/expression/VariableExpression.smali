.class public Lcom/sun/javafx/fxml/expression/VariableExpression;
.super Lcom/sun/javafx/fxml/expression/Expression;
.source "VariableExpression.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/fxml/expression/Expression",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private keyPath:Lcom/sun/javafx/fxml/expression/KeyPath;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/fxml/expression/KeyPath;)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    move-object v1, p1

    .local v1, "keyPath":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/fxml/expression/Expression;-><init>()V

    .line 37
    move-object v2, v1

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 41
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/expression/VariableExpression;->keyPath:Lcom/sun/javafx/fxml/expression/KeyPath;

    .line 42
    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/VariableExpression;->keyPath:Lcom/sun/javafx/fxml/expression/KeyPath;

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/VariableExpression;->get(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
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
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    move-object v1, p1

    .local v1, "arguments":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/fxml/expression/KeyPath;>;"
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/VariableExpression;->keyPath:Lcom/sun/javafx/fxml/expression/KeyPath;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 74
    return-void
.end method

.method public getKeyPath()Lcom/sun/javafx/fxml/expression/KeyPath;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/expression/VariableExpression;->keyPath:Lcom/sun/javafx/fxml/expression/KeyPath;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    return-object v0
.end method

.method public isDefined(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/expression/VariableExpression;->keyPath:Lcom/sun/javafx/fxml/expression/KeyPath;

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/VariableExpression;->isDefined(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    return v0
.end method

.method public isLValue()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/expression/VariableExpression;->keyPath:Lcom/sun/javafx/fxml/expression/KeyPath;

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/expression/KeyPath;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/VariableExpression;
    move-object v1, p1

    .local v1, "namespace":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/expression/VariableExpression;->keyPath:Lcom/sun/javafx/fxml/expression/KeyPath;

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/fxml/expression/VariableExpression;->set(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.class final Ljavafx/beans/binding/IntegerExpression$1;
.super Ljavafx/beans/binding/IntegerBinding;
.source "IntegerExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/IntegerExpression;->integerExpression(Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/IntegerExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$value:Ljavafx/beans/value/ObservableIntegerValue;


# direct methods
.method constructor <init>(Ljavafx/beans/value/ObservableIntegerValue;)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/IntegerExpression$1;->val$value:Ljavafx/beans/value/ObservableIntegerValue;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 95
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/IntegerExpression$1;->val$value:Ljavafx/beans/value/ObservableIntegerValue;

    aput-object v6, v4, v5

    invoke-super {v2, v3}, Ljavafx/beans/binding/IntegerBinding;->bind([Ljavafx/beans/Observable;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/IntegerExpression$1;->val$value:Ljavafx/beans/value/ObservableIntegerValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableIntegerValue;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression$1;
    return v0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression$1;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/IntegerExpression$1;->val$value:Ljavafx/beans/value/ObservableIntegerValue;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/IntegerBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 101
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/IntegerExpression$1;->val$value:Ljavafx/beans/value/ObservableIntegerValue;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression$1;
    return-object v0
.end method

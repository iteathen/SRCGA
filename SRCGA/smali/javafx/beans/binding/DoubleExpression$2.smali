.class final Ljavafx/beans/binding/DoubleExpression$2;
.super Ljavafx/beans/binding/DoubleBinding;
.source "DoubleExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/DoubleExpression;->doubleExpression(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/DoubleExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$value:Ljavafx/beans/value/ObservableValue;


# direct methods
.method constructor <init>(Ljavafx/beans/value/ObservableValue;)V
    .locals 8

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/DoubleExpression$2;->val$value:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/DoubleBinding;-><init>()V

    .line 153
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/DoubleExpression$2;->val$value:Ljavafx/beans/value/ObservableValue;

    aput-object v6, v4, v5

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleBinding;->bind([Ljavafx/beans/Observable;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected computeValue()D
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression$2;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/DoubleExpression$2;->val$value:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    move-object v1, v2

    .line 164
    .local v1, "val":Ljava/lang/Number;, "TT;"
    move-object v2, v1

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression$2;
    return-wide v0

    .restart local v0    # "this":Ljavafx/beans/binding/DoubleExpression$2;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression$2;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/DoubleExpression$2;->val$value:Ljavafx/beans/value/ObservableValue;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/DoubleBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 159
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/DoubleExpression$2;->val$value:Ljavafx/beans/value/ObservableValue;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression$2;
    return-object v0
.end method

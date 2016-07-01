.class final Ljavafx/beans/binding/Bindings$10;
.super Ljavafx/beans/binding/LongBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->negate(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$value:Ljavafx/beans/value/ObservableNumberValue;


# direct methods
.method constructor <init>(Ljavafx/beans/value/ObservableNumberValue;)V
    .locals 8

    .prologue
    .line 1161
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$10;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/Bindings$10;->val$value:Ljavafx/beans/value/ObservableNumberValue;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/LongBinding;-><init>()V

    .line 1163
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$10;->val$value:Ljavafx/beans/value/ObservableNumberValue;

    aput-object v6, v4, v5

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongBinding;->bind([Ljavafx/beans/Observable;)V

    .line 1164
    return-void
.end method


# virtual methods
.method protected computeValue()J
    .locals 4

    .prologue
    .line 1173
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/Bindings$10;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$10;->val$value:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableNumberValue;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/Bindings$10;
    return-wide v1
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$10;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$10;->val$value:Ljavafx/beans/value/ObservableNumberValue;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/LongBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 1169
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1179
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$10;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$10;->val$value:Ljavafx/beans/value/ObservableNumberValue;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$10;
    return-object v0
.end method

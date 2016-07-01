.class final Ljavafx/beans/binding/Bindings$61;
.super Ljavafx/beans/binding/IntegerBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->length(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/IntegerBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$op:Ljavafx/beans/value/ObservableStringValue;


# direct methods
.method constructor <init>(Ljavafx/beans/value/ObservableStringValue;)V
    .locals 8

    .prologue
    .line 5590
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$61;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/binding/Bindings$61;->val$op:Ljavafx/beans/value/ObservableStringValue;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 5592
    move-object v2, v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/beans/Observable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$61;->val$op:Ljavafx/beans/value/ObservableStringValue;

    aput-object v6, v4, v5

    invoke-super {v2, v3}, Ljavafx/beans/binding/IntegerBinding;->bind([Ljavafx/beans/Observable;)V

    .line 5593
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 2

    .prologue
    .line 5602
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$61;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$61;->val$op:Ljavafx/beans/value/ObservableStringValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableStringValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$61;
    return v0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 5597
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$61;
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$61;->val$op:Ljavafx/beans/value/ObservableStringValue;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/IntegerBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 5598
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
    .line 5608
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$61;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$61;->val$op:Ljavafx/beans/value/ObservableStringValue;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$61;
    return-object v0
.end method

.class final Ljavafx/beans/binding/Bindings$53;
.super Ljavafx/beans/binding/BooleanBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$op1:Ljavafx/beans/value/ObservableBooleanValue;

.field final synthetic val$op2:Ljavafx/beans/value/ObservableBooleanValue;


# direct methods
.method constructor <init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)V
    .locals 9

    .prologue
    .line 4719
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$53;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$53;->val$op1:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$53;->val$op2:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 4721
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$53;->val$op1:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$53;->val$op2:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v7, v5, v6

    invoke-super {v3, v4}, Ljavafx/beans/binding/BooleanBinding;->bind([Ljavafx/beans/Observable;)V

    .line 4722
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 3

    .prologue
    .line 4731
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$53;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$53;->val$op1:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$53;->val$op2:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$53;
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$53;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 4726
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$53;
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/beans/Observable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$53;->val$op1:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$53;->val$op2:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v5, v3, v4

    invoke-super {v1, v2}, Ljavafx/beans/binding/BooleanBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 4727
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 4737
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$53;
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/beans/value/ObservableBooleanValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$53;->val$op1:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$53;->val$op2:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v6, v4, v5

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$53;
    return-object v0
.end method

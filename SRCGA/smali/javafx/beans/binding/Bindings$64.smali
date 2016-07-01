.class final Ljavafx/beans/binding/Bindings$64;
.super Ljavafx/beans/binding/BooleanBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dependencies:[Ljavafx/beans/Observable;

.field final synthetic val$op1:Ljavafx/beans/value/ObservableObjectValue;

.field final synthetic val$op2:Ljavafx/beans/value/ObservableObjectValue;


# direct methods
.method constructor <init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)V
    .locals 6

    .prologue
    .line 5706
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$64;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$64;->val$dependencies:[Ljavafx/beans/Observable;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$64;->val$op1:Ljavafx/beans/value/ObservableObjectValue;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$64;->val$op2:Ljavafx/beans/value/ObservableObjectValue;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 5708
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$64;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v4, v5}, Ljavafx/beans/binding/BooleanBinding;->bind([Ljavafx/beans/Observable;)V

    .line 5709
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 5

    .prologue
    .line 5718
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$64;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$64;->val$op1:Ljavafx/beans/value/ObservableObjectValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableObjectValue;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 5719
    .local v1, "obj1":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$64;->val$op2:Ljavafx/beans/value/ObservableObjectValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableObjectValue;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 5720
    .local v2, "obj2":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_1

    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$64;
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$64;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 5713
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$64;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$64;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v1, v2}, Ljavafx/beans/binding/BooleanBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 5714
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 5726
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$64;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$64;->val$dependencies:[Ljavafx/beans/Observable;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$64;->val$dependencies:[Ljavafx/beans/Observable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 5727
    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$64;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$64;
    :cond_0
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$64;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.class final Ljavafx/beans/binding/Bindings$31;
.super Ljavafx/beans/binding/BooleanBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dependencies:[Ljavafx/beans/Observable;

.field final synthetic val$epsilon:D

.field final synthetic val$op1:Ljavafx/beans/value/ObservableNumberValue;

.field final synthetic val$op2:Ljavafx/beans/value/ObservableNumberValue;


# direct methods
.method constructor <init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V
    .locals 10

    .prologue
    .line 2333
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$31;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/beans/binding/Bindings$31;->val$dependencies:[Ljavafx/beans/Observable;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/beans/binding/Bindings$31;->val$op1:Ljavafx/beans/value/ObservableNumberValue;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/beans/binding/Bindings$31;->val$op2:Ljavafx/beans/value/ObservableNumberValue;

    move-object v6, v0

    move-wide v7, v4

    iput-wide v7, v6, Ljavafx/beans/binding/Bindings$31;->val$epsilon:D

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 2335
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$31;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v6, v7}, Ljavafx/beans/binding/BooleanBinding;->bind([Ljavafx/beans/Observable;)V

    .line 2336
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 6

    .prologue
    .line 2345
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/Bindings$31;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$31;->val$op1:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableNumberValue;->intValue()I

    move-result v2

    move-object v3, v1

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$31;->val$op2:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableNumberValue;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/beans/binding/Bindings$31;->val$epsilon:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/Bindings$31;
    return v1

    .restart local v1    # "this":Ljavafx/beans/binding/Bindings$31;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 2340
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$31;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$31;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v1, v2}, Ljavafx/beans/binding/BooleanBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 2341
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
    .line 2351
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$31;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$31;->val$dependencies:[Ljavafx/beans/Observable;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$31;->val$dependencies:[Ljavafx/beans/Observable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2352
    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$31;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$31;
    :cond_0
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$31;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

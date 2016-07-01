.class final Ljavafx/beans/binding/Bindings$57;
.super Ljavafx/beans/binding/BooleanBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dependencies:[Ljavafx/beans/Observable;

.field final synthetic val$op1:Ljavafx/beans/value/ObservableStringValue;

.field final synthetic val$op2:Ljavafx/beans/value/ObservableStringValue;


# direct methods
.method constructor <init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V
    .locals 6

    .prologue
    .line 5072
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$57;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$57;->val$dependencies:[Ljavafx/beans/Observable;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$57;->val$op1:Ljavafx/beans/value/ObservableStringValue;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$57;->val$op2:Ljavafx/beans/value/ObservableStringValue;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 5074
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$57;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v4, v5}, Ljavafx/beans/binding/BooleanBinding;->bind([Ljavafx/beans/Observable;)V

    .line 5075
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 5

    .prologue
    .line 5084
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$57;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$57;->val$op1:Ljavafx/beans/value/ObservableStringValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableStringValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljavafx/beans/binding/Bindings;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 5085
    .local v1, "s1":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$57;->val$op2:Ljavafx/beans/value/ObservableStringValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableStringValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljavafx/beans/binding/Bindings;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 5086
    .local v2, "s2":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$57;
    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 5079
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$57;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$57;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v1, v2}, Ljavafx/beans/binding/BooleanBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 5080
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
    .line 5092
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$57;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$57;->val$dependencies:[Ljavafx/beans/Observable;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$57;->val$dependencies:[Ljavafx/beans/Observable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 5093
    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$57;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$57;
    :cond_0
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$57;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

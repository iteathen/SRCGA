.class final Ljavafx/beans/binding/SetExpression$EmptyObservableSet$1;
.super Ljava/lang/Object;
.source "SetExpression.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/SetExpression$EmptyObservableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet$1;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet$1;
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet$1;
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetExpression$EmptyObservableSet$1;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.class final Lcom/sun/javafx/scene/control/skin/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/Utils;->executeOnceWhenPropertyIsNonNull(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$consumer:Ljava/util/function/Consumer;

.field final synthetic val$p:Ljavafx/beans/value/ObservableValue;


# direct methods
.method constructor <init>(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V
    .locals 5

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/Utils$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/Utils$1;->val$p:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/Utils$1;->val$consumer:Ljava/util/function/Consumer;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/Utils$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/Utils$1;->val$p:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 782
    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 783
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/Utils$1;->val$p:Ljavafx/beans/value/ObservableValue;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 784
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/Utils$1;->val$consumer:Ljava/util/function/Consumer;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 786
    :cond_0
    return-void
.end method

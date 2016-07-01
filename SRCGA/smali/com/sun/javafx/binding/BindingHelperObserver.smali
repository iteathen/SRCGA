.class public Lcom/sun/javafx/binding/BindingHelperObserver;
.super Ljava/lang/Object;
.source "BindingHelperObserver.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/binding/Binding",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/beans/binding/Binding;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/binding/Binding",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BindingHelperObserver;
    move-object v1, p1

    .local v1, "binding":Ljavafx/beans/binding/Binding;, "Ljavafx/beans/binding/Binding<*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v1

    if-nez v2, :cond_0

    .line 40
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Binding has to be specified."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/javafx/binding/BindingHelperObserver;->ref:Ljava/lang/ref/WeakReference;

    .line 43
    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BindingHelperObserver;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/BindingHelperObserver;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/Binding;

    move-object v2, v3

    .line 48
    .local v2, "binding":Ljavafx/beans/binding/Binding;, "Ljavafx/beans/binding/Binding<*>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 49
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljavafx/beans/binding/Binding;->invalidate()V

    goto :goto_0
.end method

.class Ljavafx/beans/property/adapter/DescriptorListenerCleaner;
.super Ljava/lang/Object;
.source "DescriptorListenerCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final lRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final pd:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;


# direct methods
.method constructor <init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;",
            "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/DescriptorListenerCleaner;
    move-object v1, p1

    .local v1, "pd":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object v2, p2

    .local v2, "l":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<*>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;->pd:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 38
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;->lRef:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/DescriptorListenerCleaner;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;->lRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;

    move-object v1, v2

    .line 44
    .local v1, "l":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<*>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 45
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;->pd:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 47
    :cond_0
    return-void
.end method

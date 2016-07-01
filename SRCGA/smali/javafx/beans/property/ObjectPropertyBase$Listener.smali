.class Ljavafx/beans/property/ObjectPropertyBase$Listener;
.super Ljava/lang/Object;
.source "ObjectPropertyBase.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/property/ObjectPropertyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# instance fields
.field private final wref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/ObjectPropertyBase",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/beans/property/ObjectPropertyBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/ObjectPropertyBase",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase$Listener;
    move-object v1, p1

    .local v1, "ref":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 224
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/beans/property/ObjectPropertyBase$Listener;->wref:Ljava/lang/ref/WeakReference;

    .line 225
    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ObjectPropertyBase$Listener;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ObjectPropertyBase$Listener;->wref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/property/ObjectPropertyBase;

    move-object v2, v3

    .line 230
    .local v2, "ref":Ljavafx/beans/property/ObjectPropertyBase;, "Ljavafx/beans/property/ObjectPropertyBase<*>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 231
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Ljavafx/beans/property/ObjectPropertyBase;->access$000(Ljavafx/beans/property/ObjectPropertyBase;)V

    goto :goto_0
.end method

.class Ljavafx/beans/property/ListPropertyBase$Listener;
.super Ljava/lang/Object;
.source "ListPropertyBase.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/property/ListPropertyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/InvalidationListener;"
    }
.end annotation


# instance fields
.field private final wref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/ListPropertyBase",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/beans/property/ListPropertyBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/ListPropertyBase",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase$Listener;, "Ljavafx/beans/property/ListPropertyBase$Listener<TE;>;"
    move-object v1, p1

    .local v1, "ref":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 326
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/beans/property/ListPropertyBase$Listener;->wref:Ljava/lang/ref/WeakReference;

    .line 327
    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListPropertyBase$Listener;, "Ljavafx/beans/property/ListPropertyBase$Listener<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ListPropertyBase$Listener;->wref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/property/ListPropertyBase;

    move-object v2, v3

    .line 332
    .local v2, "ref":Ljavafx/beans/property/ListPropertyBase;, "Ljavafx/beans/property/ListPropertyBase<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 333
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    move-object v3, v2

    move-object v4, v2

    invoke-static {v4}, Ljavafx/beans/property/ListPropertyBase;->access$200(Ljavafx/beans/property/ListPropertyBase;)Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-static {v3, v4}, Ljavafx/beans/property/ListPropertyBase;->access$300(Ljavafx/beans/property/ListPropertyBase;Ljavafx/collections/ObservableList;)V

    goto :goto_0
.end method

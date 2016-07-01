.class public abstract Ljavafx/collections/ObservableArrayBase;
.super Ljava/lang/Object;
.source "ObservableArrayBase.java"

# interfaces
.implements Ljavafx/collections/ObservableArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavafx/collections/ObservableArray",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ObservableArray",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ArrayListenerHelper",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableArrayBase;, "Ljavafx/collections/ObservableArrayBase<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableArrayBase;, "Ljavafx/collections/ObservableArrayBase<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/collections/ArrayListenerHelper;->addListener(Lcom/sun/javafx/collections/ArrayListenerHelper;Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    .line 47
    return-void
.end method

.method public final addListener(Ljavafx/collections/ArrayChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ArrayChangeListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableArrayBase;, "Ljavafx/collections/ObservableArrayBase<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ArrayChangeListener;, "Ljavafx/collections/ArrayChangeListener<TT;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/collections/ArrayListenerHelper;->addListener(Lcom/sun/javafx/collections/ArrayListenerHelper;Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    .line 55
    return-void
.end method

.method protected final fireChange(ZII)V
    .locals 8

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableArrayBase;, "Ljavafx/collections/ObservableArrayBase<TT;>;"
    move v1, p1

    .local v1, "sizeChanged":Z
    move v2, p2

    .local v2, "from":I
    move v3, p3

    .local v3, "to":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/collections/ArrayListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/ArrayListenerHelper;ZII)V

    .line 67
    return-void
.end method

.method public final removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableArrayBase;, "Ljavafx/collections/ObservableArrayBase<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ArrayListenerHelper;->removeListener(Lcom/sun/javafx/collections/ArrayListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    .line 51
    return-void
.end method

.method public final removeListener(Ljavafx/collections/ArrayChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ArrayChangeListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableArrayBase;, "Ljavafx/collections/ObservableArrayBase<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ArrayChangeListener;, "Ljavafx/collections/ArrayChangeListener<TT;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ArrayListenerHelper;->removeListener(Lcom/sun/javafx/collections/ArrayListenerHelper;Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/ObservableArrayBase;->listenerHelper:Lcom/sun/javafx/collections/ArrayListenerHelper;

    .line 59
    return-void
.end method

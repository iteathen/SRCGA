.class public abstract Ljavafx/beans/property/ReadOnlyMapPropertyBase;
.super Ljavafx/beans/property/ReadOnlyMapProperty;
.source "ReadOnlyMapPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlyMapProperty",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyMapProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 48
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 58
    return-void
.end method

.method public addListener(Ljavafx/collections/MapChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 68
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;)V

    .line 88
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener$Change;)V

    .line 105
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 53
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 63
    return-void
.end method

.method public removeListener(Ljavafx/collections/MapChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapPropertyBase;, "Ljavafx/beans/property/ReadOnlyMapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyMapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 73
    return-void
.end method

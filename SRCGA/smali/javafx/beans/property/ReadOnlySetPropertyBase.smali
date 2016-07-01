.class public abstract Ljavafx/beans/property/ReadOnlySetPropertyBase;
.super Ljavafx/beans/property/ReadOnlySetProperty;
.source "ReadOnlySetPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlySetProperty",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlySetProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 50
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 60
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 70
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;)V

    .line 90
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 107
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 55
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 65
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlySetPropertyBase;, "Ljavafx/beans/property/ReadOnlySetPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlySetPropertyBase;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 75
    return-void
.end method

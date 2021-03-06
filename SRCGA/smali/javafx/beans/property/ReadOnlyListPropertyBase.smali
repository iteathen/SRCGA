.class public abstract Ljavafx/beans/property/ReadOnlyListPropertyBase;
.super Ljavafx/beans/property/ReadOnlyListProperty;
.source "ReadOnlyListPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlyListProperty",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyListProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

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
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 58
    return-void
.end method

.method public addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 68
    return-void
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;)V

    .line 88
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 105
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

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
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 63
    return-void
.end method

.method public removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyListPropertyBase;, "Ljavafx/beans/property/ReadOnlyListPropertyBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/ReadOnlyListPropertyBase;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 73
    return-void
.end method

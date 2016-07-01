.class public Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;
.super Ljava/lang/Object;
.source "ReadOnlyPropertyDescriptor.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadOnlyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/beans/PropertyChangeListener;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field protected final bean:Ljava/lang/Object;

.field private final propertyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Ljava/lang/Object;Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "property":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty<TT;>;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->this$0:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 160
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->bean:Ljava/lang/Object;

    .line 161
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->propertyRef:Ljava/lang/ref/WeakReference;

    .line 162
    return-void
.end method


# virtual methods
.method protected checkRef()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->propertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;

    move-object v1, v2

    .line 166
    .local v1, "result":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty<TT;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 167
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->this$0:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 169
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->bean:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    move-object v1, p1

    .local v1, "propertyChangeEvent":Ljava/beans/PropertyChangeEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->bean:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->this$0:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->name:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->checkRef()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;

    move-result-object v3

    move-object v2, v3

    .line 176
    .local v2, "property":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 177
    move-object v3, v2

    invoke-interface {v3}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;->fireValueChangedEvent()V

    .line 180
    .end local v2    # "property":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty<TT;>;"
    :cond_0
    return-void
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->checkRef()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;, "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

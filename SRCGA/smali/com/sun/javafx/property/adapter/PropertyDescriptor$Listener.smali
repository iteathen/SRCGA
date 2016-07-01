.class public Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;
.super Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;
.source "PropertyDescriptor.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;
.implements Ljava/beans/VetoableChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/property/adapter/PropertyDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener",
        "<TT;>;",
        "Ljavafx/beans/value/ChangeListener",
        "<TT;>;",
        "Ljava/beans/VetoableChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

.field private updating:Z


# direct methods
.method public constructor <init>(Lcom/sun/javafx/property/adapter/PropertyDescriptor;Ljava/lang/Object;Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;, "Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener<TT;>;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "property":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty<TT;>;"
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->this$0:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 151
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;-><init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Ljava/lang/Object;Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;)V

    .line 152
    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+TT;>;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;, "Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TT;>;"
    move-object/from16 v2, p2

    .local v2, "oldValue":Ljava/lang/Object;, "TT;"
    move-object/from16 v3, p3

    .local v3, "newValue":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->checkRef()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;

    move-result-object v7

    move-object v4, v7

    .line 157
    .local v4, "property":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty<TT;>;"
    move-object v7, v4

    if-nez v7, :cond_1

    .line 158
    move-object v7, v1

    move-object v8, v0

    invoke-interface {v7, v8}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->updating:Z

    if-nez v7, :cond_0

    .line 160
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->updating:Z

    .line 162
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->this$0:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-static {v7}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->access$000(Lcom/sun/javafx/property/adapter/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->bean:Ljava/lang/Object;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 163
    move-object v7, v4

    invoke-interface {v7}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;->fireValueChangedEvent()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->updating:Z

    .line 170
    goto :goto_0

    .line 164
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 169
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->updating:Z

    .line 170
    goto :goto_0

    .line 166
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 169
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->updating:Z

    .line 170
    goto :goto_0

    .line 169
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->updating:Z

    move-object v7, v6

    throw v7
.end method

.method public vetoableChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/PropertyVetoException;
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;, "Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener<TT;>;"
    move-object v1, p1

    .local v1, "propertyChangeEvent":Ljava/beans/PropertyChangeEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->bean:Ljava/lang/Object;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->this$0:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    iget-object v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->name:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->checkRef()Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;

    move-result-object v3

    move-object v2, v3

    .line 178
    .local v2, "property":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty<TT;>;"
    move-object v3, v2

    instance-of v3, v3, Ljavafx/beans/property/Property;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljavafx/beans/property/Property;

    invoke-interface {v3}, Ljavafx/beans/property/Property;->isBound()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->updating:Z

    if-nez v3, :cond_0

    .line 179
    new-instance v3, Ljava/beans/PropertyVetoException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "A bound value cannot be set."

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/beans/PropertyVetoException;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)V

    throw v3

    .line 182
    .end local v2    # "property":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;, "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty<TT;>;"
    :cond_0
    return-void
.end method

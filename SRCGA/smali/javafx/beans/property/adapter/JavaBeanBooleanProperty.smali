.class public final Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
.super Ljavafx/beans/property/BooleanProperty;
.source "JavaBeanBooleanProperty.java"

# interfaces
.implements Ljavafx/beans/property/adapter/JavaBeanProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/BooleanProperty;",
        "Ljavafx/beans/property/adapter/JavaBeanProperty",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private final descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/javafx/property/adapter/PropertyDescriptor;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, p1

    .local v1, "descriptor":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/BooleanProperty;-><init>()V

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 72
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 74
    move-object v3, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->acc:Ljava/security/AccessControlContext;

    .line 77
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 78
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v7, v2

    move-object v8, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;-><init>(Lcom/sun/javafx/property/adapter/PropertyDescriptor;Ljava/lang/Object;Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;)V

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    .line 79
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->addListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 80
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;-><init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    invoke-static {v3, v4}, Lcom/sun/javafx/property/adapter/Disposer;->addRecord(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;)Ljava/lang/Boolean;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->lambda$get$30()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;Z)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->lambda$set$31(Z)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private synthetic lambda$get$30()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-virtual {v2}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->getBean()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    return-object v0

    .line 95
    .restart local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 96
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 97
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 98
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private synthetic lambda$set$31(Z)Ljava/lang/Void;
    .locals 10

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move v1, p1

    .local v1, "value":Z
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-virtual {v3}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 119
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v3}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    .line 125
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    return-object v0

    .line 120
    .restart local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 121
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 122
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 123
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 203
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 187
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot bind to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->unbind()V

    .line 140
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->set(Z)V

    .line 141
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 142
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 144
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 228
    return-void
.end method

.method public fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 219
    return-void
.end method

.method public get()Z
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->acc:Ljava/security/AccessControlContext;

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    return v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->getBean()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 211
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 195
    return-void
.end method

.method public set(Z)V
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "A bound value cannot be set."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty$$Lambda$2;->lambdaFactory$(Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;Z)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->acc:Ljava/security/AccessControlContext;

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 237
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 238
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "BooleanProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 239
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 240
    move-object v4, v3

    const-string v5, "bean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 242
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 243
    move-object v4, v3

    const-string v5, "name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 245
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->isBound()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    move-object v4, v3

    const-string v5, "bound, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 248
    :cond_2
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 249
    move-object v4, v3

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 250
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    return-object v0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 152
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 153
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/adapter/JavaBeanBooleanProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 155
    :cond_0
    return-void
.end method

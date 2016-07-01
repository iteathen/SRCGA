.class public final Ljavafx/beans/property/adapter/JavaBeanStringProperty;
.super Ljavafx/beans/property/StringProperty;
.source "JavaBeanStringProperty.java"

# interfaces
.implements Ljavafx/beans/property/adapter/JavaBeanProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/StringProperty;",
        "Ljavafx/beans/property/adapter/JavaBeanProperty",
        "<",
        "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/String;",
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

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    .local v1, "descriptor":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/StringProperty;-><init>()V

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 72
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 74
    move-object v3, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->acc:Ljava/security/AccessControlContext;

    .line 77
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

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

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    .line 79
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->addListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 80
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;-><init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    invoke-static {v3, v4}, Lcom/sun/javafx/property/adapter/Disposer;->addRecord(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/adapter/JavaBeanStringProperty;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->lambda$get$42()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/beans/property/adapter/JavaBeanStringProperty;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->lambda$set$43(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private synthetic lambda$get$42()Ljava/lang/String;
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-virtual {v2}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->getBean()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    return-object v0

    .line 95
    .restart local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
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

.method private synthetic lambda$set$43(Ljava/lang/String;)Ljava/lang/Void;
    .locals 10

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-virtual {v3}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 118
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v3}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .line 124
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    return-object v0

    .line 119
    .restart local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 120
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 121
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 122
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
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 202
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 186
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/String;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot bind to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->unbind()V

    .line 139
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->set(Ljava/lang/String;)V

    .line 140
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 141
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 143
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 227
    return-void
.end method

.method public fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 218
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->get()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/property/adapter/JavaBeanStringProperty$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/adapter/JavaBeanStringProperty;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->acc:Ljava/security/AccessControlContext;

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->getBean()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 210
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 194
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->isBound()Z

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

    .line 115
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/property/adapter/JavaBeanStringProperty$$Lambda$2;->lambdaFactory$(Ljavafx/beans/property/adapter/JavaBeanStringProperty;Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->acc:Ljava/security/AccessControlContext;

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanStringProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 151
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 152
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/adapter/JavaBeanStringProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 154
    :cond_0
    return-void
.end method

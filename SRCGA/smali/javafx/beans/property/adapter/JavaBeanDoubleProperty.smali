.class public final Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
.super Ljavafx/beans/property/DoubleProperty;
.source "JavaBeanDoubleProperty.java"

# interfaces
.implements Ljavafx/beans/property/adapter/JavaBeanProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/DoubleProperty;",
        "Ljavafx/beans/property/adapter/JavaBeanProperty",
        "<",
        "Ljava/lang/Number;",
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
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

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, p1

    .local v1, "descriptor":Lcom/sun/javafx/property/adapter/PropertyDescriptor;
    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/DoubleProperty;-><init>()V

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 72
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 74
    move-object v3, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->acc:Ljava/security/AccessControlContext;

    .line 77
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

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

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    .line 79
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->addListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 80
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;-><init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    invoke-static {v3, v4}, Lcom/sun/javafx/property/adapter/Disposer;->addRecord(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;)Ljava/lang/Double;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->lambda$get$32()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;D)Ljava/lang/Void;
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->lambda$set$33(D)Ljava/lang/Void;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private synthetic lambda$get$32()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    .line 95
    invoke-virtual {v2}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->getBean()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    .line 94
    invoke-static {v2, v3, v4}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    return-object v0

    .line 96
    .restart local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 97
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 98
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 99
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private synthetic lambda$set$33(D)Ljava/lang/Void;
    .locals 13

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-wide v2, p1

    .local v2, "value":D
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-virtual {v5}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->getBean()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-wide v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 120
    move-object v5, v1

    iget-object v5, v5, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v5}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .line 126
    const/4 v5, 0x0

    move-object v1, v5

    .end local v1    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    return-object v1

    .line 121
    .restart local v1    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 122
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 123
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 124
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 204
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 188
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v2, p1

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Number;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 136
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Cannot bind to null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_0
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->unbind()V

    .line 141
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->set(D)V

    .line 142
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 143
    move-object v3, v1

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v4, v1

    iget-object v4, v4, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 145
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 229
    return-void
.end method

.method public fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 220
    return-void
.end method

.method public get()D
    .locals 3

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->acc:Ljava/security/AccessControlContext;

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    return-wide v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;->getBean()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->descriptor:Lcom/sun/javafx/property/adapter/PropertyDescriptor;

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 212
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 196
    return-void
.end method

.method public set(D)V
    .locals 7

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->isBound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "A bound value cannot be set."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty$$Lambda$2;->lambdaFactory$(Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;D)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->acc:Ljava/security/AccessControlContext;

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 237
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->getBean()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 238
    .local v2, "bean":Ljava/lang/Object;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 239
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "DoubleProperty ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 240
    .local v4, "result":Ljava/lang/StringBuilder;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 241
    move-object v5, v4

    const-string v6, "bean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 243
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 244
    move-object v5, v4

    const-string v6, "name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 246
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->isBound()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    move-object v5, v4

    const-string v6, "bound, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 249
    :cond_2
    move-object v5, v4

    const-string v6, "value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->get()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 250
    move-object v5, v4

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 251
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    return-object v1
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 153
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->listener:Lcom/sun/javafx/property/adapter/PropertyDescriptor$Listener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/adapter/JavaBeanDoubleProperty;->observable:Ljavafx/beans/value/ObservableValue;

    .line 156
    :cond_0
    return-void
.end method

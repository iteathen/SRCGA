.class public final Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
.super Ljavafx/beans/property/ReadOnlyLongPropertyBase;
.source "ReadOnlyJavaBeanLongProperty.java"

# interfaces
.implements Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyLongPropertyBase;",
        "Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private final descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

.field private final listener:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    move-object v1, p1

    .local v1, "descriptor":Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;
    move-object v2, p2

    .local v2, "bean":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/ReadOnlyLongPropertyBase;-><init>()V

    .line 63
    move-object v3, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    iput-object v4, v3, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->acc:Ljava/security/AccessControlContext;

    .line 66
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 67
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;

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

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;-><init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Ljava/lang/Object;Ljavafx/beans/property/adapter/ReadOnlyJavaBeanProperty;)V

    iput-object v4, v3, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->listener:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;

    .line 68
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->listener:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->addListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 69
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->listener:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/adapter/DescriptorListenerCleaner;-><init>(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    invoke-static {v3, v4}, Lcom/sun/javafx/property/adapter/Disposer;->addRecord(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;)Ljava/lang/Long;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->lambda$get$48()Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private synthetic lambda$get$48()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    .line 84
    invoke-virtual {v2}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->getBean()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    .line 83
    invoke-static {v2, v3, v4}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 84
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    return-object v0

    .line 85
    .restart local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 86
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 87
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 88
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->listener:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->removeListener(Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;)V

    .line 123
    return-void
.end method

.method public fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyLongPropertyBase;->fireValueChangedEvent()V

    .line 115
    return-void
.end method

.method public get()J
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;)Ljava/security/PrivilegedAction;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->acc:Ljava/security/AccessControlContext;

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    return-wide v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->listener:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor$ReadOnlyListener;->getBean()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;->descriptor:Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;

    invoke-virtual {v1}, Lcom/sun/javafx/property/adapter/ReadOnlyPropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/adapter/ReadOnlyJavaBeanLongProperty;
    return-object v0
.end method

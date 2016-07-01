.class public final Lcom/sun/javafx/property/JavaBeanAccessHelper;
.super Ljava/lang/Object;
.source "JavaBeanAccessHelper.java"


# static fields
.field private static JAVA_BEAN_QUICK_ACCESSOR_CREATE_RO:Ljava/lang/reflect/Method;

.field private static initialized:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/JavaBeanAccessHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static createReadOnlyJavaBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "bean":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "propertyName":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/property/JavaBeanAccessHelper;->init()V

    .line 43
    sget-object v3, Lcom/sun/javafx/property/JavaBeanAccessHelper;->JAVA_BEAN_QUICK_ACCESSOR_CREATE_RO:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 44
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Java beans are not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_0
    :try_start_0
    sget-object v3, Lcom/sun/javafx/property/JavaBeanAccessHelper;->JAVA_BEAN_QUICK_ACCESSOR_CREATE_RO:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/property/ReadOnlyObjectProperty;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .end local v0    # "bean":Ljava/lang/Object;
    return-object v0

    .line 48
    .restart local v0    # "bean":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 49
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Java beans are not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 51
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/NoSuchMethodException;

    if-eqz v3, :cond_1

    .line 52
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/NoSuchMethodException;

    throw v3

    .line 54
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Java beans are not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static init()V
    .locals 8

    .prologue
    .line 59
    sget-boolean v1, Lcom/sun/javafx/property/JavaBeanAccessHelper;->initialized:Z

    if-nez v1, :cond_0

    .line 61
    :try_start_0
    const-string v1, "com.sun.javafx.property.adapter.JavaBeanQuickAccessor"

    const/4 v2, 0x1

    const-class v3, Lcom/sun/javafx/property/JavaBeanAccessHelper;

    .line 63
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 61
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 64
    .local v0, "accessor":Ljava/lang/Class;
    move-object v1, v0

    const-string v2, "createReadOnlyJavaBeanObjectProperty"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/property/JavaBeanAccessHelper;->JAVA_BEAN_QUICK_ACCESSOR_CREATE_RO:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    .line 72
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sun/javafx/property/JavaBeanAccessHelper;->initialized:Z

    .line 74
    :cond_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 69
    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

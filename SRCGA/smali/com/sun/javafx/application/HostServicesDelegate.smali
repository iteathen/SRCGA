.class public abstract Lcom/sun/javafx/application/HostServicesDelegate;
.super Ljava/lang/Object;
.source "HostServicesDelegate.java"


# static fields
.field private static getInstanceMeth:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/HostServicesDelegate;->getInstanceMeth:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/HostServicesDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/application/Application;)Lcom/sun/javafx/application/HostServicesDelegate;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/HostServicesDelegate;->lambda$getInstance$134(Ljavafx/application/Application;)Lcom/sun/javafx/application/HostServicesDelegate;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getInstance(Ljavafx/application/Application;)Lcom/sun/javafx/application/HostServicesDelegate;
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "app":Ljavafx/application/Application;
    const/4 v3, 0x0

    move-object v1, v3

    .line 45
    .local v1, "instance":Lcom/sun/javafx/application/HostServicesDelegate;
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Lcom/sun/javafx/application/HostServicesDelegate$$Lambda$1;->lambdaFactory$(Ljavafx/application/Application;)Ljava/security/PrivilegedExceptionAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/application/HostServicesDelegate;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 69
    .line 71
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "app":Ljavafx/application/Application;
    :goto_0
    return-object v0

    .line 66
    .restart local v0    # "app":Ljavafx/application/Application;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 67
    .local v2, "pae":Ljava/security/PrivilegedActionException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v4, v2

    invoke-virtual {v4}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private static synthetic lambda$getInstance$134(Ljavafx/application/Application;)Lcom/sun/javafx/application/HostServicesDelegate;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "app":Ljavafx/application/Application;
    sget-object v3, Lcom/sun/javafx/application/HostServicesDelegate;->getInstanceMeth:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 49
    :try_start_0
    const-string v3, "com.sun.deploy.uitoolkit.impl.fx.HostServicesFactory"

    move-object v1, v3

    .line 52
    .local v1, "factoryClassName":Ljava/lang/String;
    const-string v3, "com.sun.deploy.uitoolkit.impl.fx.HostServicesFactory"

    const/4 v4, 0x1

    const-class v5, Lcom/sun/javafx/application/HostServicesDelegate;

    .line 54
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 52
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 55
    .local v2, "factoryClass":Ljava/lang/Class;
    move-object v3, v2

    const-string v4, "getInstance"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Ljavafx/application/Application;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/sun/javafx/application/HostServicesDelegate;->getInstanceMeth:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 62
    .end local v1    # "factoryClassName":Ljava/lang/String;
    .end local v2    # "factoryClass":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/sun/javafx/application/HostServicesDelegate;->getInstanceMeth:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    .line 63
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/application/HostServicesDelegate;

    move-object v0, v3

    .end local v0    # "app":Ljavafx/application/Application;
    :goto_0
    return-object v0

    .line 57
    .restart local v0    # "app":Ljavafx/application/Application;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 58
    .local v1, "ex":Ljava/lang/Exception;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public abstract getCodeBase()Ljava/lang/String;
.end method

.method public abstract getDocumentBase()Ljava/lang/String;
.end method

.method public abstract getWebContext()Lnetscape/javascript/JSObject;
.end method

.method public abstract showDocument(Ljava/lang/String;)V
.end method

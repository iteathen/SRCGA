.class final Lsun/util/logging/LoggingSupport$1;
.super Ljava/lang/Object;
.source "LoggingSupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/LoggingSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lsun/util/logging/LoggingProxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/LoggingSupport$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/LoggingSupport$1;
    move-object v1, v0

    invoke-virtual {v1}, Lsun/util/logging/LoggingSupport$1;->run()Lsun/util/logging/LoggingProxy;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lsun/util/logging/LoggingSupport$1;
    return-object v0
.end method

.method public run()Lsun/util/logging/LoggingProxy;
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/LoggingSupport$1;
    :try_start_0
    const-string v3, "java.util.logging.LoggingProxyImpl"

    const/4 v4, 0x1

    const-class v5, Lsun/util/logging/LoggingSupport;

    .line 55
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 54
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 56
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v1

    const-string v4, "INSTANCE"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v2, v3

    .line 57
    .local v2, "f":Ljava/lang/reflect/Field;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/logging/LoggingProxy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v3

    .line 60
    .end local v0    # "this":Lsun/util/logging/LoggingSupport$1;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v0

    .line 59
    .restart local v0    # "this":Lsun/util/logging/LoggingSupport$1;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 60
    .local v1, "cnf":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 61
    .end local v1    # "cnf":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 62
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 63
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 64
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

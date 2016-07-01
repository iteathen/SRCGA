.class public final Lsun/reflect/misc/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# static fields
.field public static final PROXY_PACKAGE:Ljava/lang/String; = "com.sun.proxy"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/ReflectUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static checkPackageAccess(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 127
    move-object v1, v0

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->isNonPublicProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    move-object v1, v0

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/Class;)V

    .line 130
    :cond_0
    return-void
.end method

.method public static checkPackageAccess(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    move-object v1, v4

    .line 140
    .local v1, "s":Ljava/lang/SecurityManager;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 141
    move-object v4, v0

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 142
    .local v2, "cname":Ljava/lang/String;
    move-object v4, v2

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v2

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 144
    .local v3, "b":I
    move v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    move v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 145
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 148
    .end local v3    # "b":I
    :cond_0
    move-object v4, v2

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move v3, v4

    .line 149
    .local v3, "i":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 150
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 153
    .end local v2    # "cname":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public static checkProxyPackageAccess(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    move-object v1, v6

    .line 206
    .local v1, "s":Ljava/lang/SecurityManager;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 208
    move-object v6, v0

    invoke-static {v6}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 210
    .local v5, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v5

    invoke-static {v6}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 209
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    .end local v5    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public static varargs checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "ccl":Ljava/lang/ClassLoader;
    move-object v1, p1

    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v8

    move-object v2, v8

    .line 228
    .local v2, "sm":Ljava/lang/SecurityManager;
    move-object v8, v2

    if-eqz v8, :cond_1

    .line 229
    move-object v8, v1

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 230
    .local v6, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v7, v8

    .line 231
    .local v7, "cl":Ljava/lang/ClassLoader;
    move-object v8, v0

    move-object v9, v7

    invoke-static {v8, v9}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 232
    move-object v8, v6

    invoke-static {v8}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 229
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    .end local v6    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    return-void
.end method

.method public static ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    .local v2, "target":Ljava/lang/Object;
    move v3, p3

    .local v3, "modifiers":I
    move-object v6, v2

    if-nez v6, :cond_1

    move v6, v3

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    move v6, v3

    move v4, v6

    .line 62
    .local v4, "mods":I
    move v6, v4

    const/4 v7, -0x5

    and-int/lit8 v6, v6, -0x5

    move v4, v6

    .line 63
    move v6, v4

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 68
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V

    .line 77
    move v6, v4

    const/4 v7, -0x2

    and-int/lit8 v6, v6, -0x2

    move v4, v6

    .line 78
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v4

    :try_start_0
    invoke-static {v6, v7, v8, v9}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 104
    .end local v4    # "mods":I
    :goto_0
    return-void

    .line 87
    .restart local v4    # "mods":I
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 92
    .local v5, "e":Ljava/lang/IllegalAccessException;
    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Lsun/reflect/misc/ReflectUtil;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    goto :goto_0

    .line 95
    :cond_0
    move-object v6, v5

    throw v6

    .line 99
    .end local v4    # "mods":I
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-static {v6, v7, v8, v9}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V

    .line 104
    goto :goto_0
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 41
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method private static isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "p":Ljava/lang/ClassLoader;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v3, v1

    move-object v2, v3

    .line 169
    .local v2, "acl":Ljava/lang/ClassLoader;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v2, v3

    .line 170
    move-object v3, v0

    move-object v4, v2

    if-ne v3, v4, :cond_1

    .line 171
    const/4 v3, 0x1

    move v0, v3

    .line 174
    .end local v0    # "p":Ljava/lang/ClassLoader;
    :goto_0
    return v0

    .line 173
    .restart local v0    # "p":Ljava/lang/ClassLoader;
    :cond_1
    move-object v3, v2

    if-nez v3, :cond_0

    .line 174
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public static isNonPublicProxyClass(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 249
    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    move v2, v4

    .line 250
    .local v2, "i":I
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v3, v4

    .line 251
    .local v3, "pkg":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v4}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    const-string v5, "com.sun.proxy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return v0

    .line 250
    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 251
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isPackageAccessible(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "e":Ljava/lang/SecurityException;
    :goto_0
    return v0

    .line 158
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 159
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "ofClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 110
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 111
    const/4 v2, 0x1

    move v0, v2

    .line 115
    .end local v0    # "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return v0

    .line 113
    .restart local v0    # "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public static needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "from":Ljava/lang/ClassLoader;
    move-object v1, p1

    .local v1, "to":Ljava/lang/ClassLoader;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_1

    .line 190
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 195
    .end local v0    # "from":Ljava/lang/ClassLoader;
    :goto_0
    return v0

    .line 192
    .restart local v0    # "from":Ljava/lang/ClassLoader;
    :cond_1
    move-object v2, v1

    if-nez v2, :cond_2

    .line 193
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 195
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lsun/reflect/misc/ReflectUtil;->isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 47
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

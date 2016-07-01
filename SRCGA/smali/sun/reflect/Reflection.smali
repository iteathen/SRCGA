.class public Lsun/reflect/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static volatile fieldFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile methodFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 45
    new-instance v1, Ljava/util/HashMap;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 46
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/String;>;"
    move-object v1, v0

    const-class v2, Lsun/reflect/Reflection;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "fieldFilterMap"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string v6, "methodFilterMap"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    move-object v1, v0

    const-class v2, Ljava/lang/System;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "security"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    move-object v1, v0

    sput-object v1, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lsun/reflect/Reflection;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 9
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
    .line 86
    move-object v0, p0

    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    .local v2, "target":Ljava/lang/Object;
    move v3, p3

    .local v3, "modifiers":I
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 87
    :cond_0
    new-instance v4, Ljava/lang/InternalError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v4

    .line 90
    :cond_1
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lsun/reflect/Reflection;->verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 91
    new-instance v4, Ljava/lang/IllegalAccessException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can not access a member of class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    .line 93
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with modifiers \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    .line 95
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_2
    return-void
.end method

.method private static filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;
    .locals 17

    .prologue
    .line 288
    move-object/from16 v0, p0

    .local v0, "members":[Ljava/lang/reflect/Member;
    move-object/from16 v1, p1

    .local v1, "filteredNames":[Ljava/lang/String;
    move-object v14, v1

    if-eqz v14, :cond_0

    move-object v14, v0

    array-length v14, v14

    if-nez v14, :cond_1

    .line 289
    :cond_0
    move-object v14, v0

    move-object v0, v14

    .line 319
    .end local v0    # "members":[Ljava/lang/reflect/Member;
    :goto_0
    return-object v0

    .line 291
    .restart local v0    # "members":[Ljava/lang/reflect/Member;
    :cond_1
    const/4 v14, 0x0

    move v2, v14

    .line 292
    .local v2, "numNewMembers":I
    move-object v14, v0

    move-object v3, v14

    move-object v14, v3

    array-length v14, v14

    move v4, v14

    const/4 v14, 0x0

    move v5, v14

    :goto_1
    move v14, v5

    move v15, v4

    if-ge v14, v15, :cond_5

    move-object v14, v3

    move v15, v5

    aget-object v14, v14, v15

    move-object v6, v14

    .line 293
    .local v6, "member":Ljava/lang/reflect/Member;
    const/4 v14, 0x0

    move v7, v14

    .line 294
    .local v7, "shouldSkip":Z
    move-object v14, v1

    move-object v8, v14

    move-object v14, v8

    array-length v14, v14

    move v9, v14

    const/4 v14, 0x0

    move v10, v14

    :goto_2
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_2

    move-object v14, v8

    move v15, v10

    aget-object v14, v14, v15

    move-object v11, v14

    .line 295
    .local v11, "filteredName":Ljava/lang/String;
    move-object v14, v6

    invoke-interface {v14}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v15, v11

    if-ne v14, v15, :cond_4

    .line 296
    const/4 v14, 0x1

    move v7, v14

    .line 300
    .end local v11    # "filteredName":Ljava/lang/String;
    :cond_2
    move v14, v7

    if-nez v14, :cond_3

    .line 301
    add-int/lit8 v2, v2, 0x1

    .line 292
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 294
    .restart local v11    # "filteredName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 304
    .end local v6    # "member":Ljava/lang/reflect/Member;
    .end local v7    # "shouldSkip":Z
    .end local v11    # "filteredName":Ljava/lang/String;
    :cond_5
    move-object v14, v0

    const/4 v15, 0x0

    aget-object v14, v14, v15

    .line 305
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move v15, v2

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/reflect/Member;

    check-cast v14, [Ljava/lang/reflect/Member;

    move-object v3, v14

    .line 306
    .local v3, "newMembers":[Ljava/lang/reflect/Member;
    const/4 v14, 0x0

    move v4, v14

    .line 307
    .local v4, "destIdx":I
    move-object v14, v0

    move-object v5, v14

    move-object v14, v5

    array-length v14, v14

    move v6, v14

    const/4 v14, 0x0

    move v7, v14

    :goto_3
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_9

    move-object v14, v5

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .line 308
    .local v8, "member":Ljava/lang/reflect/Member;
    const/4 v14, 0x0

    move v9, v14

    .line 309
    .local v9, "shouldSkip":Z
    move-object v14, v1

    move-object v10, v14

    move-object v14, v10

    array-length v14, v14

    move v11, v14

    const/4 v14, 0x0

    move v12, v14

    :goto_4
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_6

    move-object v14, v10

    move v15, v12

    aget-object v14, v14, v15

    move-object v13, v14

    .line 310
    .local v13, "filteredName":Ljava/lang/String;
    move-object v14, v8

    invoke-interface {v14}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    if-ne v14, v15, :cond_8

    .line 311
    const/4 v14, 0x1

    move v9, v14

    .line 315
    .end local v13    # "filteredName":Ljava/lang/String;
    :cond_6
    move v14, v9

    if-nez v14, :cond_7

    .line 316
    move-object v14, v3

    move v15, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v8

    aput-object v16, v14, v15

    .line 307
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 309
    .restart local v13    # "filteredName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 319
    .end local v8    # "member":Ljava/lang/reflect/Member;
    .end local v9    # "shouldSkip":Z
    .end local v13    # "filteredName":Ljava/lang/String;
    :cond_9
    move-object v14, v3

    move-object v0, v14

    goto/16 :goto_0
.end method

.method public static filterFields(Ljava/lang/Class;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ")[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "fields":[Ljava/lang/reflect/Field;
    sget-object v2, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 274
    move-object v2, v1

    move-object v0, v2

    .line 276
    .end local v0    # "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v2, v1

    sget-object v3, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lsun/reflect/Reflection;->filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    check-cast v2, [Ljava/lang/reflect/Field;

    move-object v0, v2

    goto :goto_0
.end method

.method public static filterMethods(Ljava/lang/Class;[Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "methods":[Ljava/lang/reflect/Method;
    sget-object v2, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 282
    move-object v2, v1

    move-object v0, v2

    .line 284
    .end local v0    # "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v2, v1

    sget-object v3, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lsun/reflect/Reflection;->filter([Ljava/lang/reflect/Member;[Ljava/lang/String;)[Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    check-cast v2, [Ljava/lang/reflect/Method;

    move-object v0, v2

    goto :goto_0
.end method

.method public static native getCallerClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation
.end method

.method private static getClassAccessFlags(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    move v0, v1

    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return v0
.end method

.method public static isCallerSensitive(Ljava/lang/reflect/Method;)Z
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "m":Ljava/lang/reflect/Method;
    return v0
.end method

.method private static isExtClassLoader(Ljava/lang/ClassLoader;)Z
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 336
    .local v1, "cl":Ljava/lang/ClassLoader;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 337
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    .line 338
    const/4 v2, 0x1

    move v0, v2

    .line 342
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :goto_1
    return v0

    .line 340
    .restart local v0    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 342
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private static isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 6
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
    .line 179
    move-object v0, p0

    .local v0, "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    .line 180
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-static {v2, v3, v4, v5}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return v0
.end method

.method private static isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 17

    .prologue
    .line 188
    move-object/from16 v0, p0

    .local v0, "loader1":Ljava/lang/ClassLoader;
    move-object/from16 v1, p1

    .local v1, "name1":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "loader2":Ljava/lang/ClassLoader;
    move-object/from16 v3, p3

    .local v3, "name2":Ljava/lang/String;
    move-object v10, v0

    move-object v11, v2

    if-eq v10, v11, :cond_0

    .line 189
    const/4 v10, 0x0

    move v0, v10

    .line 228
    .end local v0    # "loader1":Ljava/lang/ClassLoader;
    :goto_0
    return v0

    .line 191
    .restart local v0    # "loader1":Ljava/lang/ClassLoader;
    :cond_0
    move-object v10, v1

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    move v4, v10

    .line 192
    .local v4, "lastDot1":I
    move-object v10, v3

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    move v5, v10

    .line 193
    .local v5, "lastDot2":I
    move v10, v4

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    move v10, v5

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 196
    :cond_1
    move v10, v4

    move v11, v5

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_1
    move v0, v10

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 198
    :cond_3
    const/4 v10, 0x0

    move v6, v10

    .line 199
    .local v6, "idx1":I
    const/4 v10, 0x0

    move v7, v10

    .line 202
    .local v7, "idx2":I
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_5

    .line 204
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 205
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    if-eq v10, v11, :cond_4

    .line 206
    move-object v10, v1

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x4c

    if-eq v10, v11, :cond_5

    .line 208
    new-instance v10, Ljava/lang/InternalError;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Illegal class name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v10

    .line 211
    :cond_5
    move-object v10, v3

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_7

    .line 213
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 214
    move-object v10, v3

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5b

    if-eq v10, v11, :cond_6

    .line 215
    move-object v10, v3

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x4c

    if-eq v10, v11, :cond_7

    .line 217
    new-instance v10, Ljava/lang/InternalError;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Illegal class name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v10

    .line 222
    :cond_7
    move v10, v4

    move v11, v6

    sub-int/2addr v10, v11

    move v8, v10

    .line 223
    .local v8, "length1":I
    move v10, v5

    move v11, v7

    sub-int/2addr v10, v11

    move v9, v10

    .line 225
    .local v9, "length2":I
    move v10, v8

    move v11, v9

    if-eq v10, v11, :cond_8

    .line 226
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0

    .line 228
    :cond_8
    move-object v10, v1

    const/4 v11, 0x0

    move v12, v6

    move-object v13, v3

    move v14, v7

    move v15, v8

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v10

    move v0, v10

    goto/16 :goto_0
.end method

.method static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
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
    .line 236
    move-object v0, p0

    .local v0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "ofClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 237
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 238
    const/4 v2, 0x1

    move v0, v2

    .line 242
    .end local v0    # "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return v0

    .line 240
    .restart local v0    # "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 242
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public static quickCheckMemberAccess(Ljava/lang/Class;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v1, p1

    .local v1, "modifiers":I
    move-object v2, v0

    invoke-static {v2}, Lsun/reflect/Reflection;->getClassAccessFlags(Ljava/lang/Class;)I

    move-result v2

    move v3, v1

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return v0
.end method

.method public static varargs declared-synchronized registerFieldsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "fieldNames":[Ljava/lang/String;
    const-class v5, Lsun/reflect/Reflection;

    monitor-enter v5

    :try_start_0
    sget-object v2, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;

    move-object v3, v0

    move-object v4, v1

    .line 249
    invoke-static {v2, v3, v4}, Lsun/reflect/Reflection;->registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lsun/reflect/Reflection;->fieldFilterMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit v5

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v0
.end method

.method private static varargs registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    .local v2, "names":[Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 262
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter already registered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v3

    .line 266
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 267
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/String;>;"
    return-object v0
.end method

.method public static varargs declared-synchronized registerMethodsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "methodNames":[Ljava/lang/String;
    const-class v5, Lsun/reflect/Reflection;

    monitor-enter v5

    :try_start_0
    sget-object v2, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;

    move-object v3, v0

    move-object v4, v1

    .line 256
    invoke-static {v2, v3, v4}, Lsun/reflect/Reflection;->registerFilter(Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lsun/reflect/Reflection;->methodFilterMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit v5

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "containingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v0
.end method

.method public static verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "memberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    .local v2, "target":Ljava/lang/Object;
    move v3, p3

    .local v3, "modifiers":I
    const/4 v8, 0x0

    move v4, v8

    .line 113
    .local v4, "gotIsSameClassPackage":Z
    const/4 v8, 0x0

    move v5, v8

    .line 115
    .local v5, "isSameClassPackage":Z
    move-object v8, v0

    move-object v9, v1

    if-ne v8, v9, :cond_0

    .line 117
    const/4 v8, 0x1

    move v0, v8

    .line 175
    .end local v0    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v0

    .line 120
    .restart local v0    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v8, v1

    invoke-static {v8}, Lsun/reflect/Reflection;->getClassAccessFlags(Ljava/lang/Class;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 121
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    move v5, v8

    .line 122
    const/4 v8, 0x1

    move v4, v8

    .line 123
    move v8, v5

    if-nez v8, :cond_1

    .line 124
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 130
    :cond_1
    move v8, v3

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 131
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 134
    :cond_2
    const/4 v8, 0x0

    move v6, v8

    .line 136
    .local v6, "successSoFar":Z
    move v8, v3

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 138
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 139
    const/4 v8, 0x1

    move v6, v8

    .line 143
    :cond_3
    move v8, v6

    if-nez v8, :cond_5

    move v8, v3

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 144
    move v8, v4

    if-nez v8, :cond_4

    .line 145
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    move v5, v8

    .line 147
    const/4 v8, 0x1

    move v4, v8

    .line 150
    :cond_4
    move v8, v5

    if-eqz v8, :cond_5

    .line 151
    const/4 v8, 0x1

    move v6, v8

    .line 155
    :cond_5
    move v8, v6

    if-nez v8, :cond_6

    .line 156
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 159
    :cond_6
    move v8, v3

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 161
    move-object v8, v2

    if-nez v8, :cond_8

    move-object v8, v1

    :goto_1
    move-object v7, v8

    .line 162
    .local v7, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v8, v7

    move-object v9, v0

    if-eq v8, v9, :cond_9

    .line 163
    move v8, v4

    if-nez v8, :cond_7

    .line 164
    move-object v8, v0

    move-object v9, v1

    invoke-static {v8, v9}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    move v5, v8

    .line 165
    const/4 v8, 0x1

    move v4, v8

    .line 167
    :cond_7
    move v8, v5

    if-nez v8, :cond_9

    .line 168
    move-object v8, v7

    move-object v9, v0

    invoke-static {v8, v9}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 169
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 161
    .end local v7    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_1

    .line 175
    :cond_9
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0
.end method

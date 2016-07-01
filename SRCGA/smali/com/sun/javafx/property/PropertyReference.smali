.class public final Lcom/sun/javafx/property/PropertyReference;
.super Ljava/lang/Object;
.source "PropertyReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private getter:Ljava/lang/reflect/Method;

.field private name:Ljava/lang/String;

.field private propertyGetter:Ljava/lang/reflect/Method;

.field private reflected:Z

.field private setter:Ljava/lang/reflect/Method;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sun/javafx/property/PropertyReference;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/property/PropertyReference;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, p1

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/property/PropertyReference;->reflected:Z

    .line 63
    move-object v3, v2

    if-nez v3, :cond_0

    .line 64
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Name must be specified"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 66
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Name must be specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_1
    move-object v3, v1

    if-nez v3, :cond_2

    .line 68
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Class must be specified"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 70
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    .line 71
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    .line 72
    return-void
.end method

.method private reflect()V
    .locals 17

    .prologue
    .line 213
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/property/PropertyReference;->reflected:Z

    if-nez v10, :cond_3

    .line 214
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sun/javafx/property/PropertyReference;->reflected:Z

    .line 218
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 219
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 221
    :goto_0
    move-object v1, v10

    .line 229
    .local v1, "properName":Ljava/lang/String;
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->type:Ljava/lang/Class;

    .line 231
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v10

    move-object v2, v10

    .line 233
    .local v2, "getterName":Ljava/lang/String;
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    move-object v11, v2

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v3, v10

    .line 234
    .local v3, "m":Ljava/lang/reflect/Method;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 235
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->getter:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 239
    .line 242
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    move-object v10, v0

    :try_start_2
    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->getter:Ljava/lang/reflect/Method;

    if-nez v10, :cond_1

    .line 243
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v10

    move-object v2, v10

    .line 245
    move-object v10, v0

    :try_start_3
    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    move-object v11, v2

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v3, v10

    .line 246
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 247
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->getter:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 251
    .line 257
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 261
    .local v3, "setterName":Ljava/lang/String;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->getter:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_5

    .line 262
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/property/PropertyReference;->getter:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->type:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 264
    move-object v10, v0

    :try_start_5
    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    move-object v11, v3

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/property/PropertyReference;->type:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v4, v10

    .line 265
    .local v4, "m":Ljava/lang/reflect/Method;
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 266
    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->setter:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 270
    .line 287
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_2
    :goto_3
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Property"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v10

    move-object v4, v10

    .line 289
    .local v4, "propertyGetterName":Ljava/lang/String;
    move-object v10, v0

    :try_start_7
    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    move-object v11, v4

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v5, v10

    .line 290
    .local v5, "m":Ljava/lang/reflect/Method;
    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 291
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->propertyGetter:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 296
    .line 299
    .line 301
    .end local v1    # "properName":Ljava/lang/String;
    .end local v2    # "getterName":Ljava/lang/String;
    .end local v3    # "setterName":Ljava/lang/String;
    .end local v4    # "propertyGetterName":Ljava/lang/String;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_3
    :goto_4
    return-void

    .line 219
    :cond_4
    :try_start_8
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    const/4 v12, 0x0

    .line 220
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    const/4 v12, 0x1

    .line 221
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 237
    .restart local v1    # "properName":Ljava/lang/String;
    .restart local v2    # "getterName":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v3, v10

    goto/16 :goto_1

    .line 249
    :catch_1
    move-exception v10

    move-object v3, v10

    goto/16 :goto_2

    .line 268
    .restart local v3    # "setterName":Ljava/lang/String;
    :catch_2
    move-exception v10

    move-object v4, v10

    .line 270
    goto :goto_3

    .line 272
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v4, v10

    .line 273
    .local v4, "methods":[Ljava/lang/reflect/Method;
    move-object v10, v4

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_5
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_2

    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 274
    .local v8, "m":Ljava/lang/reflect/Method;
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    move-object v9, v10

    .line 275
    .local v9, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v9

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    move-object v10, v8

    .line 277
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 279
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->setter:Ljava/lang/reflect/Method;

    .line 280
    move-object v10, v0

    move-object v11, v9

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->type:Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 281
    goto/16 :goto_3

    .line 273
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 293
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v4, "propertyGetterName":Ljava/lang/String;
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    :cond_7
    move-object v10, v0

    const/4 v11, 0x0

    :try_start_9
    iput-object v11, v10, Lcom/sun/javafx/property/PropertyReference;->propertyGetter:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4

    .line 294
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v10

    move-object v5, v10

    goto/16 :goto_4

    .line 297
    .end local v1    # "properName":Ljava/lang/String;
    .end local v2    # "getterName":Ljava/lang/String;
    .end local v3    # "setterName":Ljava/lang/String;
    .end local v4    # "propertyGetterName":Ljava/lang/String;
    :catch_4
    move-exception v10

    move-object v1, v10

    .line 298
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to introspect property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 309
    const/4 v3, 0x1

    move v0, v3

    .line 323
    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    :goto_0
    return v0

    .line 311
    .restart local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/property/PropertyReference;

    if-nez v3, :cond_1

    .line 312
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 314
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/property/PropertyReference;

    move-object v2, v3

    .line 315
    .local v2, "other":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<*>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    .line 316
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 317
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 319
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    if-eq v3, v4, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    .line 320
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 321
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 323
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/property/PropertyReference;->isReadable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read from unreadable property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    :cond_0
    sget-boolean v3, Lcom/sun/javafx/property/PropertyReference;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->getter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 173
    :cond_1
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->getter:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return-object v0

    .line 174
    .restart local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 175
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getContainingClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return-object v0
.end method

.method public getProperty(Ljava/lang/Object;)Ljavafx/beans/property/ReadOnlyProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljavafx/beans/property/ReadOnlyProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/property/PropertyReference;->hasProperty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    :cond_0
    sget-boolean v3, Lcom/sun/javafx/property/PropertyReference;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->propertyGetter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 196
    :cond_1
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->propertyGetter:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/property/ReadOnlyProperty;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return-object v0

    .line 197
    .restart local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 198
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/property/PropertyReference;->reflect()V

    .line 131
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/PropertyReference;->type:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return-object v0
.end method

.method public hasProperty()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/property/PropertyReference;->reflect()V

    .line 102
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/PropertyReference;->propertyGetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    const/4 v2, 0x5

    move v1, v2

    .line 332
    .local v1, "hash":I
    const/16 v2, 0x61

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 333
    const/16 v2, 0x61

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/property/PropertyReference;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 334
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return v0

    .line 332
    .restart local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 333
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isReadable()Z
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/property/PropertyReference;->reflect()V

    .line 91
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/PropertyReference;->getter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/property/PropertyReference;->reflect()V

    .line 81
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/PropertyReference;->setter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/property/PropertyReference;->isWritable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot write to readonly property "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :cond_0
    sget-boolean v4, Lcom/sun/javafx/property/PropertyReference;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/property/PropertyReference;->setter:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 150
    :cond_1
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/property/PropertyReference;->setter:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 153
    .line 154
    return-void

    .line 151
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 152
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/property/PropertyReference;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/property/PropertyReference;, "Lcom/sun/javafx/property/PropertyReference<TT;>;"
    return-object v0
.end method

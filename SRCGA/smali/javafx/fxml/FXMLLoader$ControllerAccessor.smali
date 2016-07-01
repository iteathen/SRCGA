.class final Ljavafx/fxml/FXMLLoader$ControllerAccessor;
.super Ljava/lang/Object;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ControllerAccessor"
.end annotation


# static fields
.field private static final FIELDS:I = 0x1

.field private static final INITIAL_CLASS_ACCESS:I = 0xf

.field private static final INITIAL_MEMBER_ACCESS:I = 0xf

.field private static final METHODS:I = 0x0

.field private static final PACKAGE:I = 0x4

.field private static final PRIVATE:I = 0x8

.field private static final PROTECTED:I = 0x2

.field private static final PUBLIC:I = 0x1


# instance fields
.field private callerClassLoader:Ljava/lang/ClassLoader;

.field private controller:Ljava/lang/Object;

.field private controllerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private controllerMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/fxml/FXMLLoader$SupportedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 3305
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/fxml/FXMLLoader$1;)V
    .locals 3

    .prologue
    .line 3305
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, p1

    .local v1, "x0":Ljavafx/fxml/FXMLLoader$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;-><init>()V

    return-void
.end method

.method static synthetic access$3900(Ljavafx/fxml/FXMLLoader$ControllerAccessor;Ljava/lang/Class;I)V
    .locals 6

    .prologue
    .line 3305
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Class;
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->addAccessibleFields(Ljava/lang/Class;I)V

    return-void
.end method

.method static synthetic access$4000(Ljavafx/fxml/FXMLLoader$ControllerAccessor;Ljava/lang/Class;I)V
    .locals 6

    .prologue
    .line 3305
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/Class;
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->addAccessibleMethods(Ljava/lang/Class;I)V

    return-void
.end method

.method private addAccessibleFields(Ljava/lang/Class;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 3435
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v2, p2

    .local v2, "allowedMemberAccess":I
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    move v3, v9

    .line 3437
    .local v3, "isPublicType":Z
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    move-object v4, v9

    .line 3438
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_0
    move v9, v5

    move-object v10, v4

    array-length v10, v10

    if-ge v9, v10, :cond_6

    .line 3439
    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 3440
    .local v6, "field":Ljava/lang/reflect/Field;
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    move v7, v9

    .line 3442
    .local v7, "memberModifiers":I
    move v9, v7

    const/16 v10, 0x18

    and-int/lit8 v9, v9, 0x18

    if-nez v9, :cond_0

    move v9, v7

    .line 3444
    invoke-static {v9}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->getAccess(I)I

    move-result v9

    move v10, v2

    and-int/2addr v9, v10

    if-nez v9, :cond_1

    .line 3446
    .line 3438
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3449
    :cond_1
    move v9, v3

    if-eqz v9, :cond_2

    move v9, v7

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3450
    :cond_2
    move-object v9, v6

    const-class v10, Ljavafx/fxml/FXML;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-nez v9, :cond_3

    .line 3452
    goto :goto_1

    .line 3456
    :cond_3
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3459
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerFields:Ljava/util/Map;

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object v8, v9

    .line 3460
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v9, v8

    if-nez v9, :cond_5

    .line 3461
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v9

    .line 3462
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerFields:Ljava/util/Map;

    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3464
    :cond_5
    move-object v9, v8

    move-object v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_1

    .line 3467
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "memberModifiers":I
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_6
    return-void
.end method

.method private addAccessibleMembers(Ljava/lang/Class;III)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;III)V"
        }
    .end annotation

    .prologue
    .line 3389
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object/from16 v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v2, p2

    .local v2, "prevAllowedClassAccess":I
    move/from16 v3, p3

    .local v3, "prevAllowedMemberAccess":I
    move/from16 v4, p4

    .local v4, "membersType":I
    move-object v9, v1

    const-class v10, Ljava/lang/Object;

    if-ne v9, v10, :cond_0

    .line 3390
    .line 3431
    :goto_0
    return-void

    .line 3393
    :cond_0
    move v9, v2

    move v5, v9

    .line 3394
    .local v5, "allowedClassAccess":I
    move v9, v3

    move v6, v9

    .line 3395
    .local v6, "allowedMemberAccess":I
    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->callerClassLoader:Ljava/lang/ClassLoader;

    if-eqz v9, :cond_1

    move-object v9, v1

    .line 3396
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->callerClassLoader:Ljava/lang/ClassLoader;

    if-eq v9, v10, :cond_1

    .line 3398
    move v9, v5

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    move v5, v9

    .line 3399
    move v9, v6

    const/4 v10, 0x1

    and-int/lit8 v9, v9, 0x1

    move v6, v9

    .line 3402
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->getAccess(I)I

    move-result v9

    move v7, v9

    .line 3403
    .local v7, "classAccess":I
    move v9, v7

    move v10, v5

    and-int/2addr v9, v10

    if-nez v9, :cond_2

    .line 3405
    goto :goto_0

    .line 3408
    :cond_2
    move-object v9, v1

    invoke-static {v9}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 3410
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    move v11, v5

    move v12, v6

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->addAccessibleMembers(Ljava/lang/Class;III)V

    .line 3415
    move v9, v6

    move v8, v9

    .line 3416
    .local v8, "finalAllowedMemberAccess":I
    new-instance v9, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    move v12, v4

    move-object v13, v1

    move v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/fxml/FXMLLoader$ControllerAccessor$1;-><init>(Ljavafx/fxml/FXMLLoader$ControllerAccessor;ILjava/lang/Class;I)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v9

    .line 3431
    goto :goto_0
.end method

.method private addAccessibleMethods(Ljava/lang/Class;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 3471
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v2, p2

    .local v2, "allowedMemberAccess":I
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Class;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    move v3, v10

    .line 3473
    .local v3, "isPublicType":Z
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v4, v10

    .line 3474
    .local v4, "methods":[Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move-object v11, v4

    array-length v11, v11

    if-ge v10, v11, :cond_5

    .line 3475
    move-object v10, v4

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    .line 3476
    .local v6, "method":Ljava/lang/reflect/Method;
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    move v7, v10

    .line 3478
    .local v7, "memberModifiers":I
    move v10, v7

    const/16 v11, 0x108

    and-int/lit16 v10, v10, 0x108

    if-nez v10, :cond_0

    move v10, v7

    .line 3480
    invoke-static {v10}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->getAccess(I)I

    move-result v10

    move v11, v2

    and-int/2addr v10, v11

    if-nez v10, :cond_1

    .line 3482
    .line 3474
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3485
    :cond_1
    move v10, v3

    if-eqz v10, :cond_2

    move v10, v7

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3486
    :cond_2
    move-object v10, v6

    const-class v11, Ljavafx/fxml/FXML;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    if-nez v10, :cond_3

    .line 3488
    goto :goto_1

    .line 3492
    :cond_3
    move-object v10, v6

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3500
    :cond_4
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 3503
    .local v8, "methodName":Ljava/lang/String;
    move-object v10, v6

    invoke-static {v10}, Ljavafx/fxml/FXMLLoader;->access$4100(Ljava/lang/reflect/Method;)Ljavafx/fxml/FXMLLoader$SupportedType;

    move-result-object v10

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v9, v11

    .local v9, "convertedType":Ljavafx/fxml/FXMLLoader$SupportedType;
    if-eqz v10, :cond_0

    .line 3504
    move-object v10, v0

    iget-object v10, v10, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerMethods:Ljava/util/Map;

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object v11, v8

    move-object v12, v6

    .line 3505
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 3508
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "memberModifiers":I
    .end local v8    # "methodName":Ljava/lang/String;
    .end local v9    # "convertedType":Ljavafx/fxml/FXMLLoader$SupportedType;
    :cond_5
    return-void
.end method

.method private static getAccess(I)I
    .locals 4

    .prologue
    .line 3511
    move v0, p0

    .local v0, "fullModifiers":I
    move v2, v0

    const/4 v3, 0x7

    and-int/lit8 v2, v2, 0x7

    move v1, v2

    .line 3515
    .local v1, "untransformedAccess":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 3526
    :pswitch_0
    const/4 v2, 0x4

    move v0, v2

    .end local v0    # "fullModifiers":I
    :goto_0
    return v0

    .line 3517
    .restart local v0    # "fullModifiers":I
    :pswitch_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 3520
    :pswitch_2
    const/4 v2, 0x2

    move v0, v2

    goto :goto_0

    .line 3523
    :pswitch_3
    const/16 v2, 0x8

    move v0, v2

    goto :goto_0

    .line 3515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method getControllerFields()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3347
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerFields:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 3348
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerFields:Ljava/util/Map;

    .line 3350
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->callerClassLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    .line 3352
    # invokes: Ljavafx/fxml/FXMLLoader;->checkAllPermissions()V
    invoke-static {}, Ljavafx/fxml/FXMLLoader;->access$3800()V

    .line 3355
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controller:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0xf

    const/16 v4, 0xf

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->addAccessibleMembers(Ljava/lang/Class;III)V

    .line 3361
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerFields:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    return-object v0
.end method

.method getControllerMethods()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljavafx/fxml/FXMLLoader$SupportedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3365
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerMethods:Ljava/util/Map;

    if-nez v5, :cond_2

    .line 3366
    move-object v5, v0

    new-instance v6, Ljava/util/EnumMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-class v8, Ljavafx/fxml/FXMLLoader$SupportedType;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v6, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerMethods:Ljava/util/Map;

    .line 3367
    invoke-static {}, Ljavafx/fxml/FXMLLoader$SupportedType;->values()[Ljavafx/fxml/FXMLLoader$SupportedType;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 3368
    .local v4, "t":Ljavafx/fxml/FXMLLoader$SupportedType;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerMethods:Ljava/util/Map;

    move-object v6, v4

    new-instance v7, Ljava/util/HashMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3371
    .end local v4    # "t":Ljavafx/fxml/FXMLLoader$SupportedType;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->callerClassLoader:Ljava/lang/ClassLoader;

    if-nez v5, :cond_1

    .line 3373
    # invokes: Ljavafx/fxml/FXMLLoader;->checkAllPermissions()V
    invoke-static {}, Ljavafx/fxml/FXMLLoader;->access$3800()V

    .line 3376
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controller:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0xf

    const/16 v8, 0xf

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->addAccessibleMembers(Ljava/lang/Class;III)V

    .line 3382
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerMethods:Ljava/util/Map;

    move-object v0, v5

    .end local v0    # "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    return-object v0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 3342
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerFields:Ljava/util/Map;

    .line 3343
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controllerMethods:Ljava/util/Map;

    .line 3344
    return-void
.end method

.method setCallerClass(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3332
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, p1

    .local v1, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 3333
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 3335
    .local v2, "newCallerClassLoader":Ljava/lang/ClassLoader;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->callerClassLoader:Ljava/lang/ClassLoader;

    move-object v4, v2

    if-eq v3, v4, :cond_0

    .line 3336
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->callerClassLoader:Ljava/lang/ClassLoader;

    .line 3337
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->reset()V

    .line 3339
    :cond_0
    return-void

    .line 3333
    .end local v2    # "newCallerClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setController(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 3325
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$ControllerAccessor;
    move-object v1, p1

    .local v1, "controller":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controller:Ljava/lang/Object;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 3326
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->controller:Ljava/lang/Object;

    .line 3327
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/fxml/FXMLLoader$ControllerAccessor;->reset()V

    .line 3329
    :cond_0
    return-void
.end method

.class final Ljavafx/fxml/JavaFXBuilder;
.super Ljava/lang/Object;
.source "JavaFXBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NO_ARGS:[Ljava/lang/Object;

.field private static final NO_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final buildMethod:Ljava/lang/reflect/Method;

.field private final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final createMethod:Ljava/lang/reflect/Method;

.field private final getters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final setters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    const-class v0, Ljavafx/fxml/JavaFXBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/fxml/JavaFXBuilder;->$assertionsDisabled:Z

    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ljavafx/fxml/JavaFXBuilder;->NO_ARGS:[Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Ljavafx/fxml/JavaFXBuilder;->NO_SIG:[Ljava/lang/Class;

    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 242
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Ljavafx/fxml/JavaFXBuilder;->methods:Ljava/util/Map;

    .line 243
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Ljavafx/fxml/JavaFXBuilder;->getters:Ljava/util/Map;

    .line 244
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Ljavafx/fxml/JavaFXBuilder;->setters:Ljava/util/Map;

    .line 468
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/fxml/JavaFXBuilder;->builderClass:Ljava/lang/Class;

    .line 469
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/fxml/JavaFXBuilder;->createMethod:Ljava/lang/reflect/Method;

    .line 470
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/fxml/JavaFXBuilder;->buildMethod:Ljava/lang/reflect/Method;

    .line 471
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, p1

    .local v1, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 242
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/JavaFXBuilder;->methods:Ljava/util/Map;

    .line 243
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/JavaFXBuilder;->getters:Ljava/util/Map;

    .line 244
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavafx/fxml/JavaFXBuilder;->setters:Ljava/util/Map;

    .line 474
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/fxml/JavaFXBuilder;->builderClass:Ljava/lang/Class;

    .line 475
    move-object v2, v0

    move-object v3, v1

    const-string v4, "create"

    sget-object v5, Ljavafx/fxml/JavaFXBuilder;->NO_SIG:[Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Ljavafx/fxml/JavaFXBuilder;->createMethod:Ljava/lang/reflect/Method;

    .line 476
    move-object v2, v0

    move-object v3, v1

    const-string v4, "build"

    sget-object v5, Ljavafx/fxml/JavaFXBuilder;->NO_SIG:[Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Ljavafx/fxml/JavaFXBuilder;->buildMethod:Ljava/lang/reflect/Method;

    .line 477
    sget-boolean v2, Ljavafx/fxml/JavaFXBuilder;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/JavaFXBuilder;->createMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 478
    :cond_0
    sget-boolean v2, Ljavafx/fxml/JavaFXBuilder;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/fxml/JavaFXBuilder;->buildMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 479
    :cond_1
    return-void
.end method

.method static synthetic access$000(Ljavafx/fxml/JavaFXBuilder;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/JavaFXBuilder;->createMethod:Ljava/lang/reflect/Method;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Ljavafx/fxml/JavaFXBuilder;->NO_ARGS:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Ljavafx/fxml/JavaFXBuilder;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/JavaFXBuilder;->builderClass:Ljava/lang/Class;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/fxml/JavaFXBuilder;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/JavaFXBuilder;->buildMethod:Ljava/lang/reflect/Method;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/JavaFXBuilder;->methods:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/fxml/JavaFXBuilder;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/fxml/JavaFXBuilder;->findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/JavaFXBuilder;->setters:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/fxml/JavaFXBuilder;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/JavaFXBuilder;->getters:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Ljavafx/fxml/JavaFXBuilder;->NO_SIG:[Ljava/lang/Class;

    return-object v0
.end method

.method private findMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 11

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    move-object v6, v1

    const/4 v7, 0x1

    .line 487
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 491
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/fxml/JavaFXBuilder;->builderClass:Ljava/lang/Class;

    invoke-static {v6}, Lsun/reflect/misc/MethodUtil;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

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

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 492
    .local v5, "m":Ljava/lang/reflect/Method;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 493
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder;
    return-object v0

    .line 491
    .restart local v0    # "this":Ljavafx/fxml/JavaFXBuilder;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 496
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " could not be found at class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/fxml/JavaFXBuilder;->builderClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method createBuilder()Ljavafx/util/Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Builder",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder;
    new-instance v1, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/fxml/JavaFXBuilder$ObjectBuilder;-><init>(Ljavafx/fxml/JavaFXBuilder;Ljavafx/fxml/JavaFXBuilder$1;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/JavaFXBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/JavaFXBuilder;->buildMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/fxml/JavaFXBuilder;
    return-object v0
.end method

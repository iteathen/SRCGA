.class Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
.super Ljava/lang/Object;
.source "BeanAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/fxml/BeanAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodCache"
.end annotation


# instance fields
.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nextClassCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    move-object v1, p1

    .local v1, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/reflect/Method;>;>;"
    move-object v2, p2

    .local v2, "nextClassCache":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->methods:Ljava/util/Map;

    .line 63
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->nextClassCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;Lcom/sun/javafx/fxml/BeanAdapter$1;)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    move-object v1, p1

    .local v1, "x0":Ljava/util/Map;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/fxml/BeanAdapter$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;-><init>(Ljava/util/Map;Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x2":[Ljava/lang/Class;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    return-object v0
.end method

.method private varargs getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->methods:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v3, v6

    .line 68
    .local v3, "namedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 69
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 70
    move-object v6, v3

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    move-object v5, v6

    .line 71
    .local v5, "namedMethod":Ljava/lang/reflect/Method;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    .line 72
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move-object v7, v2

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    move-object v6, v5

    move-object v0, v6

    .line 78
    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    .end local v4    # "i":I
    .end local v5    # "namedMethod":Ljava/lang/reflect/Method;
    :goto_1
    return-object v0

    .line 69
    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    .restart local v4    # "i":I
    .restart local v5    # "namedMethod":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    .end local v4    # "i":I
    .end local v5    # "namedMethod":Ljava/lang/reflect/Method;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->nextClassCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->nextClassCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    :goto_2
    move-object v0, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

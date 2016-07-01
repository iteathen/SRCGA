.class Ljavafx/fxml/FXMLLoader$MethodHandler;
.super Ljava/lang/Object;
.source "FXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/fxml/FXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodHandler"
.end annotation


# instance fields
.field private final controller:Ljava/lang/Object;

.field private final method:Ljava/lang/reflect/Method;

.field private final type:Ljavafx/fxml/FXMLLoader$SupportedType;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljavafx/fxml/FXMLLoader$SupportedType;)V
    .locals 6

    .prologue
    .line 1760
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v1, p1

    .local v1, "controller":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v3, p3

    .local v3, "type":Ljavafx/fxml/FXMLLoader$SupportedType;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1761
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$MethodHandler;->method:Ljava/lang/reflect/Method;

    .line 1762
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$MethodHandler;->controller:Ljava/lang/Object;

    .line 1763
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/fxml/FXMLLoader$MethodHandler;->type:Ljavafx/fxml/FXMLLoader$SupportedType;

    .line 1764
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljavafx/fxml/FXMLLoader$SupportedType;Ljavafx/fxml/FXMLLoader$1;)V
    .locals 9

    .prologue
    .line 1755
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/reflect/Method;
    move-object v3, p3

    .local v3, "x2":Ljavafx/fxml/FXMLLoader$SupportedType;
    move-object v4, p4

    .local v4, "x3":Ljavafx/fxml/FXMLLoader$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/fxml/FXMLLoader$MethodHandler;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljavafx/fxml/FXMLLoader$SupportedType;)V

    return-void
.end method

.method static synthetic access$1400(Ljavafx/fxml/FXMLLoader$MethodHandler;)Ljavafx/fxml/FXMLLoader$SupportedType;
    .locals 2

    .prologue
    .line 1755
    move-object v0, p0

    .local v0, "x0":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/fxml/FXMLLoader$MethodHandler;->type:Ljavafx/fxml/FXMLLoader$SupportedType;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/fxml/FXMLLoader$MethodHandler;
    return-object v0
.end method


# virtual methods
.method public varargs invoke([Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1768
    move-object v0, p0

    .local v0, "this":Ljavafx/fxml/FXMLLoader$MethodHandler;
    move-object v1, p1

    .local v1, "params":[Ljava/lang/Object;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$MethodHandler;->type:Ljavafx/fxml/FXMLLoader$SupportedType;

    sget-object v4, Ljavafx/fxml/FXMLLoader$SupportedType;->PARAMETERLESS:Ljavafx/fxml/FXMLLoader$SupportedType;

    if-eq v3, v4, :cond_0

    .line 1769
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$MethodHandler;->method:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$MethodHandler;->controller:Ljava/lang/Object;

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1777
    .line 1778
    :goto_0
    return-void

    .line 1771
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/fxml/FXMLLoader$MethodHandler;->method:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/fxml/FXMLLoader$MethodHandler;->controller:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 1773
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1774
    .local v2, "exception":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1775
    .end local v2    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1776
    .local v2, "exception":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.class public abstract Lcom/sun/javafx/fxml/expression/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/fxml/expression/Expression$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FALSE_KEYWORD:Ljava/lang/String; = "false"

.field private static final NULL_KEYWORD:Ljava/lang/String; = "null"

.field private static final TRUE_KEYWORD:Ljava/lang/String; = "true"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$add$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$subtract$1(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$10(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$lessThanOrEqualTo$10(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$11(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$and$11(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$12(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$or$12(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$13(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$negate$13(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$14(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$not$14(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$multiply$2(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$divide$3(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$4(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$modulo$4(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$5(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$equalTo$5(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$6(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$notEqualTo$6(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$7(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$greaterThan$7(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$8(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$greaterThanOrEqualTo$8(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$9(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lambda$lessThan$9(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static add(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$1;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static add(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->add(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static add(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->add(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->add(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static and(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1356
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$14;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static and(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Boolean;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1368
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Boolean;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->and(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static and(Ljava/lang/Boolean;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 1378
    move-object v0, p0

    .local v0, "left":Ljava/lang/Boolean;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->and(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static and(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1388
    move-object v0, p0

    .local v0, "left":Ljava/lang/Boolean;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Boolean;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->and(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static divide(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$6;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static divide(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1014
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Number;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->divide(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static divide(Ljava/lang/Number;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/sun/javafx/fxml/expression/BinaryExpression;"
        }
    .end annotation

    .prologue
    .line 1024
    move-object v0, p0

    .local v0, "left":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<Ljava/lang/Number;>;"
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->divide(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Number;
    return-object v0
.end method

.method public static divide(Ljava/lang/Number;Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1034
    move-object v0, p0

    .local v0, "left":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Number;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->divide(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Number;
    return-object v0
.end method

.method public static equalTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$8;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static equalTo(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1116
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->equalTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static equalTo(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->equalTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static equalTo(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1136
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->equalTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static get(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/sun/javafx/fxml/expression/KeyPath;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "keyPath":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 573
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 576
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/fxml/expression/KeyPath;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "namespace":Ljava/lang/Object;
    return-object v0
.end method

.method public static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 617
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 621
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 622
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 623
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v4, v3

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 637
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "namespace":Ljava/lang/Object;
    return-object v0

    .line 624
    .restart local v0    # "namespace":Ljava/lang/Object;
    :cond_1
    move-object v4, v0

    if-eqz v4, :cond_3

    .line 626
    move-object v4, v0

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 627
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    move-object v3, v4

    .line 632
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 633
    .local v2, "value":Ljava/lang/Object;
    goto :goto_0

    .line 629
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v4, Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    .line 634
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const/4 v4, 0x0

    move-object v2, v4

    .restart local v2    # "value":Ljava/lang/Object;
    goto :goto_0
.end method

.method private static get(Ljava/lang/Object;Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "keyPathIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 591
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 595
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 597
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 602
    .local v2, "value":Ljava/lang/Object;, "TT;"
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "namespace":Ljava/lang/Object;
    return-object v0

    .line 599
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    .restart local v0    # "namespace":Ljava/lang/Object;
    :cond_1
    move-object v3, v0

    move-object v2, v3

    .restart local v2    # "value":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method

.method public static greaterThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1188
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$10;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static greaterThan(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->greaterThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static greaterThan(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->greaterThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static greaterThan(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1220
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->greaterThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static greaterThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1230
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$11;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static greaterThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->greaterThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static greaterThanOrEqualTo(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->greaterThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static greaterThanOrEqualTo(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1262
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->greaterThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static isDefined(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;)Z
    .locals 5

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "keyPath":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 721
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 724
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/fxml/expression/KeyPath;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->isDefined(Ljava/lang/Object;Ljava/util/Iterator;)Z

    move-result v2

    move v0, v2

    .end local v0    # "namespace":Ljava/lang/Object;
    return v0
.end method

.method public static isDefined(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 768
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 769
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 773
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 774
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 775
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 789
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v2, "defined":Z
    :goto_1
    move v4, v2

    move v0, v4

    .end local v0    # "namespace":Ljava/lang/Object;
    return v0

    .line 775
    .end local v2    # "defined":Z
    .restart local v0    # "namespace":Ljava/lang/Object;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 776
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    move-object v4, v0

    if-eqz v4, :cond_4

    .line 778
    move-object v4, v0

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 779
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    move-object v3, v4

    .line 784
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    move v2, v4

    .line 785
    .restart local v2    # "defined":Z
    goto :goto_1

    .line 781
    .end local v2    # "defined":Z
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v4, Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_2

    .line 786
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const/4 v4, 0x0

    move v2, v4

    .restart local v2    # "defined":Z
    goto :goto_1
.end method

.method private static isDefined(Ljava/lang/Object;Ljava/util/Iterator;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "keyPathIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 738
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 741
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 742
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 745
    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 748
    .local v2, "key":Ljava/lang/String;
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 749
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/expression/Expression;->isDefined(Ljava/lang/Object;Ljava/util/Iterator;)Z

    move-result v4

    move v3, v4

    .line 754
    .local v3, "defined":Z
    :goto_0
    move v4, v3

    move v0, v4

    .end local v0    # "namespace":Ljava/lang/Object;
    return v0

    .line 751
    .end local v3    # "defined":Z
    .restart local v0    # "namespace":Ljava/lang/Object;
    :cond_2
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/expression/Expression;->isDefined(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    move v3, v4

    .restart local v3    # "defined":Z
    goto :goto_0
.end method

.method private static synthetic lambda$add$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 801
    move-object v1, p0

    .local v1, "leftValue":Ljava/lang/Object;
    move-object v2, p1

    .local v2, "rightValue":Ljava/lang/Object;
    move-object v6, v1

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_0

    move-object v6, v2

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 802
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 824
    :goto_0
    move-object v6, v3

    move-object v1, v6

    .end local v1    # "leftValue":Ljava/lang/Object;
    return-object v1

    .line 804
    .restart local v1    # "leftValue":Ljava/lang/Object;
    :cond_1
    move-object v6, v1

    check-cast v6, Ljava/lang/Number;

    move-object v4, v6

    .line 805
    .local v4, "leftNumber":Ljava/lang/Number;
    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    move-object v5, v6

    .line 807
    .local v5, "rightNumber":Ljava/lang/Number;
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/Double;

    if-nez v6, :cond_2

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Double;

    if-eqz v6, :cond_3

    .line 808
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v3, v6

    .local v3, "value":Ljava/lang/Double;
    goto :goto_0

    .line 809
    .end local v3    # "value":Ljava/lang/Double;
    :cond_3
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/Float;

    if-nez v6, :cond_4

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_5

    .line 810
    :cond_4
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v3, v6

    .local v3, "value":Ljava/lang/Float;
    goto :goto_0

    .line 811
    .end local v3    # "value":Ljava/lang/Float;
    :cond_5
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/Long;

    if-nez v6, :cond_6

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_7

    .line 812
    :cond_6
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v3, v6

    .local v3, "value":Ljava/lang/Long;
    goto :goto_0

    .line 813
    .end local v3    # "value":Ljava/lang/Long;
    :cond_7
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/Integer;

    if-nez v6, :cond_8

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_9

    .line 814
    :cond_8
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, v6

    .local v3, "value":Ljava/lang/Integer;
    goto :goto_0

    .line 815
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_9
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/Short;

    if-nez v6, :cond_a

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Short;

    if-eqz v6, :cond_b

    .line 816
    :cond_a
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Number;->shortValue()S

    move-result v6

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Number;->shortValue()S

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "value":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 817
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_b
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/Byte;

    if-nez v6, :cond_c

    move-object v6, v5

    instance-of v6, v6, Ljava/lang/Byte;

    if-eqz v6, :cond_d

    .line 818
    :cond_c
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    move-result v6

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Number;->byteValue()B

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "value":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 820
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_d
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6
.end method

.method private static synthetic lambda$and$11(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 1357
    move-object v0, p0

    .local v0, "leftValue":Ljava/lang/Boolean;
    move-object v1, p1

    .local v1, "rightValue":Ljava/lang/Boolean;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "leftValue":Ljava/lang/Boolean;
    return-object v0

    .restart local v0    # "leftValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$divide$3(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9

    .prologue
    .line 987
    move-object v1, p0

    .local v1, "leftValue":Ljava/lang/Number;
    move-object v2, p1

    .local v2, "rightValue":Ljava/lang/Number;
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Double;

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 988
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v3, v4

    .line 1003
    .local v3, "value":Ljava/lang/Number;
    :goto_0
    move-object v4, v3

    move-object v1, v4

    .end local v1    # "leftValue":Ljava/lang/Number;
    return-object v1

    .line 989
    .end local v3    # "value":Ljava/lang/Number;
    .restart local v1    # "leftValue":Ljava/lang/Number;
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Float;

    if-nez v4, :cond_2

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 990
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 991
    .end local v3    # "value":Ljava/lang/Number;
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_4

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 992
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 993
    .end local v3    # "value":Ljava/lang/Number;
    :cond_5
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_6

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 994
    :cond_6
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 995
    .end local v3    # "value":Ljava/lang/Number;
    :cond_7
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Short;

    if-nez v4, :cond_8

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Short;

    if-eqz v4, :cond_9

    .line 996
    :cond_8
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 997
    .end local v3    # "value":Ljava/lang/Number;
    :cond_9
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Byte;

    if-nez v4, :cond_a

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Byte;

    if-eqz v4, :cond_b

    .line 998
    :cond_a
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto/16 :goto_0

    .line 1000
    .end local v3    # "value":Ljava/lang/Number;
    :cond_b
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method private static synthetic lambda$equalTo$5(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "leftValue":Ljava/lang/Comparable;
    move-object v1, p1

    .local v1, "rightValue":Ljava/lang/Comparable;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "leftValue":Ljava/lang/Comparable;
    return-object v0

    .restart local v0    # "leftValue":Ljava/lang/Comparable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$greaterThan$7(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "leftValue":Ljava/lang/Comparable;
    move-object v1, p1

    .local v1, "rightValue":Ljava/lang/Comparable;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "leftValue":Ljava/lang/Comparable;
    return-object v0

    .restart local v0    # "leftValue":Ljava/lang/Comparable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$greaterThanOrEqualTo$8(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1231
    move-object v0, p0

    .local v0, "leftValue":Ljava/lang/Comparable;
    move-object v1, p1

    .local v1, "rightValue":Ljava/lang/Comparable;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "leftValue":Ljava/lang/Comparable;
    return-object v0

    .restart local v0    # "leftValue":Ljava/lang/Comparable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$lessThan$9(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "leftValue":Ljava/lang/Comparable;
    move-object v1, p1

    .local v1, "rightValue":Ljava/lang/Comparable;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "leftValue":Ljava/lang/Comparable;
    return-object v0

    .restart local v0    # "leftValue":Ljava/lang/Comparable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$lessThanOrEqualTo$10(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1315
    move-object v0, p0

    .local v0, "leftValue":Ljava/lang/Comparable;
    move-object v1, p1

    .local v1, "rightValue":Ljava/lang/Comparable;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "leftValue":Ljava/lang/Comparable;
    return-object v0

    .restart local v0    # "leftValue":Ljava/lang/Comparable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$modulo$4(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9

    .prologue
    .line 1047
    move-object v1, p0

    .local v1, "leftValue":Ljava/lang/Number;
    move-object v2, p1

    .local v2, "rightValue":Ljava/lang/Number;
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Double;

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 1048
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    rem-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v3, v4

    .line 1063
    .local v3, "value":Ljava/lang/Number;
    :goto_0
    move-object v4, v3

    move-object v1, v4

    .end local v1    # "leftValue":Ljava/lang/Number;
    return-object v1

    .line 1049
    .end local v3    # "value":Ljava/lang/Number;
    .restart local v1    # "leftValue":Ljava/lang/Number;
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Float;

    if-nez v4, :cond_2

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 1050
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    rem-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 1051
    .end local v3    # "value":Ljava/lang/Number;
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_4

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 1052
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 1053
    .end local v3    # "value":Ljava/lang/Number;
    :cond_5
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_6

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 1054
    :cond_6
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    rem-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 1055
    .end local v3    # "value":Ljava/lang/Number;
    :cond_7
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Short;

    if-nez v4, :cond_8

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Short;

    if-eqz v4, :cond_9

    .line 1056
    :cond_8
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v5

    rem-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 1057
    .end local v3    # "value":Ljava/lang/Number;
    :cond_9
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Byte;

    if-nez v4, :cond_a

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Byte;

    if-eqz v4, :cond_b

    .line 1058
    :cond_a
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    rem-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto/16 :goto_0

    .line 1060
    .end local v3    # "value":Ljava/lang/Number;
    :cond_b
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method private static synthetic lambda$multiply$2(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9

    .prologue
    .line 927
    move-object v1, p0

    .local v1, "leftValue":Ljava/lang/Number;
    move-object v2, p1

    .local v2, "rightValue":Ljava/lang/Number;
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Double;

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 928
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v3, v4

    .line 943
    .local v3, "value":Ljava/lang/Number;
    :goto_0
    move-object v4, v3

    move-object v1, v4

    .end local v1    # "leftValue":Ljava/lang/Number;
    return-object v1

    .line 929
    .end local v3    # "value":Ljava/lang/Number;
    .restart local v1    # "leftValue":Ljava/lang/Number;
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Float;

    if-nez v4, :cond_2

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 930
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 931
    .end local v3    # "value":Ljava/lang/Number;
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_4

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 932
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 933
    .end local v3    # "value":Ljava/lang/Number;
    :cond_5
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_6

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 934
    :cond_6
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 935
    .end local v3    # "value":Ljava/lang/Number;
    :cond_7
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Short;

    if-nez v4, :cond_8

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Short;

    if-eqz v4, :cond_9

    .line 936
    :cond_8
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 937
    .end local v3    # "value":Ljava/lang/Number;
    :cond_9
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Byte;

    if-nez v4, :cond_a

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Byte;

    if-eqz v4, :cond_b

    .line 938
    :cond_a
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto/16 :goto_0

    .line 940
    .end local v3    # "value":Ljava/lang/Number;
    :cond_b
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method private static synthetic lambda$negate$13(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 5

    .prologue
    .line 1440
    move-object v0, p0

    .local v0, "value":Ljava/lang/Number;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 1442
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Number;>;"
    move-object v2, v1

    const-class v3, Ljava/lang/Byte;

    if-ne v2, v3, :cond_0

    .line 1443
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 1453
    .end local v0    # "value":Ljava/lang/Number;
    :goto_0
    return-object v0

    .line 1444
    .restart local v0    # "value":Ljava/lang/Number;
    :cond_0
    move-object v2, v1

    const-class v3, Ljava/lang/Short;

    if-ne v2, v3, :cond_1

    .line 1445
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1446
    :cond_1
    move-object v2, v1

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_2

    .line 1447
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1448
    :cond_2
    move-object v2, v1

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_3

    .line 1449
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1450
    :cond_3
    move-object v2, v1

    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_4

    .line 1451
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1452
    :cond_4
    move-object v2, v1

    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_5

    .line 1453
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1455
    :cond_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method private static synthetic lambda$not$14(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1476
    move-object v0, p0

    .local v0, "value":Ljava/lang/Boolean;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":Ljava/lang/Boolean;
    return-object v0

    .restart local v0    # "value":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$notEqualTo$6(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1147
    move-object v0, p0

    .local v0, "leftValue":Ljava/lang/Comparable;
    move-object v1, p1

    .local v1, "rightValue":Ljava/lang/Comparable;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "leftValue":Ljava/lang/Comparable;
    return-object v0

    .restart local v0    # "leftValue":Ljava/lang/Comparable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$or$12(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 1399
    move-object v0, p0

    .local v0, "leftValue":Ljava/lang/Boolean;
    move-object v1, p1

    .local v1, "rightValue":Ljava/lang/Boolean;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "leftValue":Ljava/lang/Boolean;
    return-object v0

    .restart local v0    # "leftValue":Ljava/lang/Boolean;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$subtract$1(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 9

    .prologue
    .line 867
    move-object v1, p0

    .local v1, "leftValue":Ljava/lang/Number;
    move-object v2, p1

    .local v2, "rightValue":Ljava/lang/Number;
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Double;

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 868
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v3, v4

    .line 883
    .local v3, "value":Ljava/lang/Number;
    :goto_0
    move-object v4, v3

    move-object v1, v4

    .end local v1    # "leftValue":Ljava/lang/Number;
    return-object v1

    .line 869
    .end local v3    # "value":Ljava/lang/Number;
    .restart local v1    # "leftValue":Ljava/lang/Number;
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Float;

    if-nez v4, :cond_2

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 870
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 871
    .end local v3    # "value":Ljava/lang/Number;
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Long;

    if-nez v4, :cond_4

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 872
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 873
    .end local v3    # "value":Ljava/lang/Number;
    :cond_5
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_6

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 874
    :cond_6
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 875
    .end local v3    # "value":Ljava/lang/Number;
    :cond_7
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Short;

    if-nez v4, :cond_8

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Short;

    if-eqz v4, :cond_9

    .line 876
    :cond_8
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->shortValue()S

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto :goto_0

    .line 877
    .end local v3    # "value":Ljava/lang/Number;
    :cond_9
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Byte;

    if-nez v4, :cond_a

    move-object v4, v2

    instance-of v4, v4, Ljava/lang/Byte;

    if-eqz v4, :cond_b

    .line 878
    :cond_a
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Number;
    goto/16 :goto_0

    .line 880
    .end local v3    # "value":Ljava/lang/Number;
    :cond_b
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public static lessThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1272
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$12;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static lessThan(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1284
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lessThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static lessThan(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lessThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static lessThan(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1304
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lessThan(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static lessThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1314
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$13;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static lessThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1326
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lessThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static lessThanOrEqualTo(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 1336
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lessThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static lessThanOrEqualTo(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1346
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->lessThanOrEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static modulo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$7;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static modulo(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lcom/sun/javafx/fxml/expression/BinaryExpression;"
        }
    .end annotation

    .prologue
    .line 1074
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "right":Ljava/lang/Number;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->modulo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static modulo(Ljava/lang/Number;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Lcom/sun/javafx/fxml/expression/Expression",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/sun/javafx/fxml/expression/BinaryExpression;"
        }
    .end annotation

    .prologue
    .line 1084
    move-object v0, p0

    .local v0, "left":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<Ljava/lang/Number;>;"
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->modulo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Number;
    return-object v0
.end method

.method public static modulo(Ljava/lang/Number;Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1094
    move-object v0, p0

    .local v0, "left":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Number;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->modulo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Number;
    return-object v0
.end method

.method public static multiply(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$5;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static multiply(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 954
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Number;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->multiply(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static multiply(Ljava/lang/Number;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "left":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->multiply(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Number;
    return-object v0
.end method

.method public static multiply(Ljava/lang/Number;Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "left":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Number;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->multiply(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Number;
    return-object v0
.end method

.method public static negate(Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/UnaryExpression;
    .locals 6

    .prologue
    .line 1439
    move-object v0, p0

    .local v0, "operand":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v1, Lcom/sun/javafx/fxml/expression/UnaryExpression;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$16;->lambdaFactory$()Ljava/util/function/Function;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/fxml/expression/UnaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/Function;)V

    move-object v0, v1

    .end local v0    # "operand":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static negate(Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/UnaryExpression;
    .locals 5

    .prologue
    .line 1467
    move-object v0, p0

    .local v0, "operand":Ljava/lang/Number;
    new-instance v1, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/sun/javafx/fxml/expression/Expression;->negate(Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/UnaryExpression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "operand":Ljava/lang/Number;
    return-object v0
.end method

.method public static not(Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/UnaryExpression;
    .locals 6

    .prologue
    .line 1476
    move-object v0, p0

    .local v0, "operand":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v1, Lcom/sun/javafx/fxml/expression/UnaryExpression;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$17;->lambdaFactory$()Ljava/util/function/Function;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/fxml/expression/UnaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/Function;)V

    move-object v0, v1

    .end local v0    # "operand":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static not(Ljava/lang/Boolean;)Lcom/sun/javafx/fxml/expression/UnaryExpression;
    .locals 5

    .prologue
    .line 1485
    move-object v0, p0

    .local v0, "operand":Ljava/lang/Boolean;
    new-instance v1, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/sun/javafx/fxml/expression/Expression;->not(Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/UnaryExpression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "operand":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static notEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static notEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1158
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->notEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static notEqualTo(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->notEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static notEqualTo(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1178
    move-object v0, p0

    .local v0, "left":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Object;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->notEqualTo(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Object;
    return-object v0
.end method

.method public static or(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 1398
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$15;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static or(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Boolean;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1410
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Boolean;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->or(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static or(Ljava/lang/Boolean;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 1420
    move-object v0, p0

    .local v0, "left":Ljava/lang/Boolean;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->or(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static or(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 1430
    move-object v0, p0

    .local v0, "left":Ljava/lang/Boolean;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Boolean;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->or(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static set(Ljava/lang/Object;Lcom/sun/javafx/fxml/expression/KeyPath;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "keyPath":Lcom/sun/javafx/fxml/expression/KeyPath;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 649
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 652
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/fxml/expression/KeyPath;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/fxml/expression/Expression;->set(Ljava/lang/Object;Ljava/util/Iterator;Ljava/lang/Object;)V

    .line 653
    return-void
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 690
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 693
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 694
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 695
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v4, v3

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 696
    .line 708
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 696
    :cond_1
    move-object v4, v0

    if-eqz v4, :cond_3

    .line 698
    move-object v4, v0

    instance-of v4, v4, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 699
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    move-object v3, v4

    .line 704
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 705
    goto :goto_0

    .line 701
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v4, Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    .line 706
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method private static set(Ljava/lang/Object;Ljava/util/Iterator;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "namespace":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "keyPathIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 664
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 667
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 668
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 671
    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 673
    .local v3, "key":Ljava/lang/String;
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 674
    move-object v4, v0

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/expression/Expression;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/fxml/expression/Expression;->set(Ljava/lang/Object;Ljava/util/Iterator;Ljava/lang/Object;)V

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_2
    move-object v4, v0

    move-object v5, v3

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/fxml/expression/Expression;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static subtract(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 8

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-static {}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$4;->lambdaFactory$()Ljava/util/function/BiFunction;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/fxml/expression/BinaryExpression;-><init>(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;Ljava/util/function/BiFunction;)V

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static subtract(Lcom/sun/javafx/fxml/expression/Expression;Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "left":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Number;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->subtract(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Lcom/sun/javafx/fxml/expression/Expression;
    return-object v0
.end method

.method public static subtract(Ljava/lang/Number;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 6

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "left":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "right":Lcom/sun/javafx/fxml/expression/Expression;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->subtract(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Number;
    return-object v0
.end method

.method public static subtract(Ljava/lang/Number;Ljava/lang/Number;)Lcom/sun/javafx/fxml/expression/BinaryExpression;
    .locals 7

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "left":Ljava/lang/Number;
    move-object v1, p1

    .local v1, "right":Ljava/lang/Number;
    new-instance v2, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/sun/javafx/fxml/expression/LiteralExpression;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/fxml/expression/LiteralExpression;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->subtract(Lcom/sun/javafx/fxml/expression/Expression;Lcom/sun/javafx/fxml/expression/Expression;)Lcom/sun/javafx/fxml/expression/BinaryExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "left":Ljava/lang/Number;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/fxml/expression/Expression;
    .locals 9

    .prologue
    .line 1496
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v4, v0

    if-nez v4, :cond_0

    .line 1497
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1500
    :cond_0
    new-instance v4, Lcom/sun/javafx/fxml/expression/Expression$Parser;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/expression/Expression$Parser;-><init>(Lcom/sun/javafx/fxml/expression/Expression$1;)V

    move-object v1, v4

    .line 1503
    .local v1, "parser":Lcom/sun/javafx/fxml/expression/Expression$Parser;
    move-object v4, v1

    :try_start_0
    new-instance v5, Ljava/io/StringReader;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sun/javafx/fxml/expression/Expression$Parser;->parse(Ljava/io/Reader;)Lcom/sun/javafx/fxml/expression/Expression;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 1506
    .line 1508
    .local v2, "expression":Lcom/sun/javafx/fxml/expression/Expression;
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "value":Ljava/lang/String;
    return-object v0

    .line 1504
    .end local v2    # "expression":Lcom/sun/javafx/fxml/expression/Expression;
    .restart local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1505
    .local v3, "exception":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public abstract evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public getArguments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/fxml/expression/KeyPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 551
    .local v1, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sun/javafx/fxml/expression/KeyPath;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/expression/Expression;->getArguments(Ljava/util/List;)V

    .line 553
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/expression/Expression;, "Lcom/sun/javafx/fxml/expression/Expression<TT;>;"
    return-object v0
.end method

.method protected abstract getArguments(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/fxml/expression/KeyPath;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isDefined(Ljava/lang/Object;)Z
.end method

.method public abstract isLValue()Z
.end method

.method public abstract update(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

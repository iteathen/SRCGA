.class final synthetic Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field private static final instance:Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;-><init>()V

    sput-object v0, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;->instance:Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/function/BiFunction;
    .locals 1

    sget-object v0, Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;->instance:Lcom/sun/javafx/fxml/expression/Expression$$Lambda$9;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    check-cast v3, Ljava/lang/Comparable;

    move-object v4, v2

    check-cast v4, Ljava/lang/Comparable;

    invoke-static {v3, v4}, Lcom/sun/javafx/fxml/expression/Expression;->access$lambda$6(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

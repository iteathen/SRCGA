.class final synthetic Ljavafx/collections/transformation/FilteredList$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field private static final instance:Ljavafx/collections/transformation/FilteredList$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavafx/collections/transformation/FilteredList$$Lambda$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/collections/transformation/FilteredList$$Lambda$1;-><init>()V

    sput-object v0, Ljavafx/collections/transformation/FilteredList$$Lambda$1;->instance:Ljavafx/collections/transformation/FilteredList$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/function/Predicate;
    .locals 1

    sget-object v0, Ljavafx/collections/transformation/FilteredList$$Lambda$1;->instance:Ljavafx/collections/transformation/FilteredList$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Ljavafx/collections/transformation/FilteredList;->access$lambda$0(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.class final synthetic Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;


# static fields
.field private static final instance:Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;-><init>()V

    sput-object v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;->instance:Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/sun/javafx/iio/bmp/BMPImageLoader$BitConverter;
    .locals 1

    sget-object v0, Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;->instance:Lcom/sun/javafx/iio/bmp/BMPImageLoader$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public convert(III)B
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/iio/bmp/BMPImageLoader;->access$lambda$0(III)B

    move-result v4

    move v0, v4

    return v0
.end method

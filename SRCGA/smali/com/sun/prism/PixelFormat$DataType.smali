.class public final enum Lcom/sun/prism/PixelFormat$DataType;
.super Ljava/lang/Enum;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/PixelFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/PixelFormat$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/PixelFormat$DataType;

.field public static final enum BYTE:Lcom/sun/prism/PixelFormat$DataType;

.field public static final enum FLOAT:Lcom/sun/prism/PixelFormat$DataType;

.field public static final enum INT:Lcom/sun/prism/PixelFormat$DataType;


# instance fields
.field private sizeInBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 58
    new-instance v0, Lcom/sun/prism/PixelFormat$DataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "BYTE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/PixelFormat$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    .line 59
    new-instance v0, Lcom/sun/prism/PixelFormat$DataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "INT"

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/PixelFormat$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/prism/PixelFormat$DataType;->INT:Lcom/sun/prism/PixelFormat$DataType;

    .line 60
    new-instance v0, Lcom/sun/prism/PixelFormat$DataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-string v2, "FLOAT"

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/PixelFormat$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/prism/PixelFormat$DataType;->FLOAT:Lcom/sun/prism/PixelFormat$DataType;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/prism/PixelFormat$DataType;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/PixelFormat$DataType;->INT:Lcom/sun/prism/PixelFormat$DataType;

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/PixelFormat$DataType;->FLOAT:Lcom/sun/prism/PixelFormat$DataType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/PixelFormat$DataType;->$VALUES:[Lcom/sun/prism/PixelFormat$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PixelFormat$DataType;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "sizeInBytes":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/prism/PixelFormat$DataType;->sizeInBytes:I

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/PixelFormat$DataType;
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/PixelFormat$DataType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/PixelFormat$DataType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/PixelFormat$DataType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sun/prism/PixelFormat$DataType;->$VALUES:[Lcom/sun/prism/PixelFormat$DataType;

    invoke-virtual {v0}, [Lcom/sun/prism/PixelFormat$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/PixelFormat$DataType;

    return-object v0
.end method


# virtual methods
.method public getSizeInBytes()I
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/PixelFormat$DataType;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/PixelFormat$DataType;->sizeInBytes:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/PixelFormat$DataType;
    return v0
.end method

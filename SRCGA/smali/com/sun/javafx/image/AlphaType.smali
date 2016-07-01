.class public final enum Lcom/sun/javafx/image/AlphaType;
.super Ljava/lang/Enum;
.source "AlphaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/image/AlphaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/image/AlphaType;

.field public static final enum NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

.field public static final enum OPAQUE:Lcom/sun/javafx/image/AlphaType;

.field public static final enum PREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    new-instance v0, Lcom/sun/javafx/image/AlphaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "OPAQUE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/AlphaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    .line 30
    new-instance v0, Lcom/sun/javafx/image/AlphaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "PREMULTIPLIED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/AlphaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/image/AlphaType;->PREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    .line 31
    new-instance v0, Lcom/sun/javafx/image/AlphaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONPREMULTIPLIED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/AlphaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sun/javafx/image/AlphaType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->PREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/image/AlphaType;->$VALUES:[Lcom/sun/javafx/image/AlphaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/AlphaType;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/image/AlphaType;
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/image/AlphaType;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/image/AlphaType;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/image/AlphaType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sun/javafx/image/AlphaType;->$VALUES:[Lcom/sun/javafx/image/AlphaType;

    invoke-virtual {v0}, [Lcom/sun/javafx/image/AlphaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/image/AlphaType;

    return-object v0
.end method

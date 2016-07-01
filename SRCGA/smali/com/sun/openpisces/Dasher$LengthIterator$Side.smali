.class final enum Lcom/sun/openpisces/Dasher$LengthIterator$Side;
.super Ljava/lang/Enum;
.source "Dasher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/openpisces/Dasher$LengthIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/openpisces/Dasher$LengthIterator$Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

.field public static final enum LEFT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

.field public static final enum RIGHT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 324
    new-instance v0, Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "LEFT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Dasher$LengthIterator$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->LEFT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    new-instance v0, Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/openpisces/Dasher$LengthIterator$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->RIGHT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->LEFT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->RIGHT:Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->$VALUES:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

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
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/Dasher$LengthIterator$Side;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/openpisces/Dasher$LengthIterator$Side;
    .locals 3

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/openpisces/Dasher$LengthIterator$Side;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/sun/openpisces/Dasher$LengthIterator$Side;->$VALUES:[Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    invoke-virtual {v0}, [Lcom/sun/openpisces/Dasher$LengthIterator$Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/openpisces/Dasher$LengthIterator$Side;

    return-object v0
.end method

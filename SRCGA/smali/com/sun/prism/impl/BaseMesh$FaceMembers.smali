.class public final enum Lcom/sun/prism/impl/BaseMesh$FaceMembers;
.super Ljava/lang/Enum;
.source "BaseMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/BaseMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceMembers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/prism/impl/BaseMesh$FaceMembers;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/prism/impl/BaseMesh$FaceMembers;

.field public static final enum POINT0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

.field public static final enum POINT1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

.field public static final enum POINT2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

.field public static final enum SMOOTHING_GROUP:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

.field public static final enum TEXCOORD0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

.field public static final enum TEXCOORD1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

.field public static final enum TEXCOORD2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "POINT0"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    new-instance v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXCOORD0"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    new-instance v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "POINT1"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    new-instance v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXCOORD1"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    new-instance v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "POINT2"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    new-instance v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "TEXCOORD2"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    new-instance v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "SMOOTHING_GROUP"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/impl/BaseMesh$FaceMembers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->SMOOTHING_GROUP:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD0:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD1:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->POINT2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->TEXCOORD2:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->SMOOTHING_GROUP:Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->$VALUES:[Lcom/sun/prism/impl/BaseMesh$FaceMembers;

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
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMesh$FaceMembers;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/prism/impl/BaseMesh$FaceMembers;
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/prism/impl/BaseMesh$FaceMembers;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sun/prism/impl/BaseMesh$FaceMembers;->$VALUES:[Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    invoke-virtual {v0}, [Lcom/sun/prism/impl/BaseMesh$FaceMembers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/prism/impl/BaseMesh$FaceMembers;

    return-object v0
.end method

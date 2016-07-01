.class final enum Lcom/sun/glass/ui/lens/LensApplication$DragActions;
.super Ljava/lang/Enum;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DragActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/glass/ui/lens/LensApplication$DragActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/glass/ui/lens/LensApplication$DragActions;

.field public static final enum DROP:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

.field public static final enum ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

.field public static final enum LEAVE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

.field public static final enum NONE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

.field public static final enum OVER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;


# instance fields
.field private name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 1194
    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "NONE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "NONE"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->NONE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    .line 1195
    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "ENTER"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "ENTER"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    .line 1196
    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "LEAVE"

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "LEAVE"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->LEAVE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    .line 1197
    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "OVER"

    const/4 v3, 0x3

    const/16 v4, 0x8

    const-string v5, "OVER"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->OVER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    .line 1198
    new-instance v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "DROP"

    const/4 v3, 0x4

    const/16 v4, 0x10

    const-string v5, "DROP"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->DROP:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    .line 1193
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->NONE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->LEAVE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->OVER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->DROP:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->$VALUES:[Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1201
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$DragActions;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "value":I
    move-object v4, p4

    .local v4, "name":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1202
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->value:I

    .line 1203
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->name:Ljava/lang/String;

    .line 1204
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/glass/ui/lens/LensApplication$DragActions;
    .locals 3

    .prologue
    .line 1193
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/glass/ui/lens/LensApplication$DragActions;
    .locals 1

    .prologue
    .line 1193
    sget-object v0, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->$VALUES:[Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v0}, [Lcom/sun/glass/ui/lens/LensApplication$DragActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .prologue
    .line 1207
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$DragActions;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->value:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$DragActions;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1212
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$DragActions;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$DragActions;
    return-object v0
.end method

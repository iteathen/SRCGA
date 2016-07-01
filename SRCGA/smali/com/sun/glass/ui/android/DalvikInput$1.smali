.class final Lcom/sun/glass/ui/android/DalvikInput$1;
.super Ljava/lang/Object;
.source "DalvikInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/glass/ui/android/DalvikInput;->onMultiTouchEvent(I[I[I[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actions:[I

.field final synthetic val$count:I

.field final synthetic val$ids:[I

.field final synthetic val$touchXs:[I

.field final synthetic val$touchYs:[I


# direct methods
.method constructor <init>(I[I[I[I[I)V
    .locals 8

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/android/DalvikInput$1;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/sun/glass/ui/android/DalvikInput$1;->val$count:I

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/glass/ui/android/DalvikInput$1;->val$actions:[I

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/glass/ui/android/DalvikInput$1;->val$ids:[I

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/glass/ui/android/DalvikInput$1;->val$touchXs:[I

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/glass/ui/android/DalvikInput$1;->val$touchYs:[I

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/android/DalvikInput$1;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/android/DalvikInput$1;->val$count:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/android/DalvikInput$1;->val$actions:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/android/DalvikInput$1;->val$ids:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/android/DalvikInput$1;->val$touchXs:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/android/DalvikInput$1;->val$touchYs:[I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sun/glass/ui/android/DalvikInput;->access$000(I[I[I[I[I)V

    .line 37
    return-void
.end method
